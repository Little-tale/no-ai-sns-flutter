import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:no_ai_sns/core/constants/app_size.dart';
import 'package:no_ai_sns/core/presentation/w_login_required.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
import 'package:no_ai_sns/features/auth/presentation/pages/login_page.dart';
import 'package:no_ai_sns/features/auth/presentation/pages/register_page.dart';
import 'package:no_ai_sns/features/home/presentation/providers/comment_controller/comment_controller.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/comment_bottom_sheet/w_comment_item.dart';
import 'package:velocity_x/velocity_x.dart';

class CommentBottomSheetWidget extends ConsumerStatefulWidget {
  const CommentBottomSheetWidget(
    this.userProfileUrl, {
    super.key,
    required this.postID,
    required this.controller,
  });

  final int postID;
  final String? userProfileUrl;
  final ScrollController controller;

  @override
  ConsumerState<CommentBottomSheetWidget> createState() =>
      _CommentBottomSheetWidgetState();
}

class _CommentBottomSheetWidgetState
    extends ConsumerState<CommentBottomSheetWidget> {
  late final TextEditingController _commentController;

  @override
  void initState() {
    super.initState();
    _commentController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = commentControllerProvider(postId: widget.postID);
      ref.read(provider.notifier).load();
    });
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = commentControllerProvider(postId: widget.postID);
    _listenCommentText(provider);

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
      child: Container(
        color: context.theme.scaffoldBackgroundColor,
        child: _body(widget.controller, context, provider),
      ),
    );
  }

  Widget _body(
    ScrollController controller,
    BuildContext context,
    CommentControllerProvider provider,
  ) {
    return Column(
      children: [
        // _bottomSheetTop(),
        // List
        _commentList(controller, provider).expand(),
        AnimatedPadding(
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeOut,
          padding: EdgeInsets.only(bottom: context.viewInsets.bottom),
          child: HStack(
            crossAlignment: CrossAxisAlignment.end,
            spacing: AppSpacing.sm,
            [_profileWidget(context), _commentTextFieldSection(context)],
          ).pSymmetric(h: AppSpacing.md, v: AppSpacing.md),
        ),
      ],
    );
  }

  Widget _commentTextFieldSection(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.xs,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: context.theme.primaryColor, width: 0.4),
        ),
        child: _commentWidget(context),
      ),
    );
  }

  Widget _commentWidget(BuildContext context) {
    return HStack([
      Expanded(
        child: TextFormField(
          controller: _commentController,
          maxLines: 3,
          minLines: 1,
          onChanged: (value) {
            ref
                .read(commentControllerProvider(postId: widget.postID).notifier)
                .changeCommentText(value);
          },
          decoration: const InputDecoration(
            hintText: 'Write a comment...',
            border: InputBorder.none,
            isDense: true,
          ),
          keyboardType: TextInputType.twitter,
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: context.theme.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: IconButton(
          icon: const Icon(Icons.send, size: 20, color: Colors.white),
          onPressed: () {
            // FIXME:
            FocusScope.of(context).unfocus();
            final provider = commentControllerProvider(postId: widget.postID);
            ref.read(provider.notifier).tappedSendButton();
          },
        ),
      ),
    ]);
  }

  Widget _commentList(
    ScrollController controller,
    CommentControllerProvider provider,
  ) {
    final provider = commentControllerProvider(postId: widget.postID);

    final items = ref.watch(provider.select((s) => s.items));
    final isLoading = ref.watch(provider.select((s) => s.isLoading));
    final errorMessage = ref.watch(provider.select((s) => s.errorMessage));

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (errorMessage != null) {
      return Center(child: errorMessage.text.semiBold.size(16).make());
    }
    if (items.isEmpty) {
      return Center(child: 'No comments yet'.text.semiBold.size(24).make());
    }
    return ListView.builder(
      controller: controller,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CommentItemWidget(
          item: items[index],
          onLikeTap: () {
            ref.read(provider.notifier).commentLikeTapped(index);
          },
        );
      },
    );
  }

  Widget _profileWidget(BuildContext context) {
    return CircleAvatar(
      radius: 28,
      backgroundColor: context.colors.primaryContainer,
      backgroundImage: widget.userProfileUrl != null
          ? CachedNetworkImageProvider(widget.userProfileUrl!)
          : null,
      child: widget.userProfileUrl == null
          ? const Icon(Icons.person, size: 28)
          : null,
    );
  }

  void _listenCommentText(CommentControllerProvider provider) {
    ref.listen<String>(provider.select((s) => s.commentText), (prev, next) {
      if (_commentController.text == next) {
        return;
      }
      _commentController
        ..text = next
        ..selection = TextSelection.fromPosition(
          TextPosition(offset: next.length),
        );
    });
  }

  // Widget _bottomSheetTop() {
  //   return VStack(crossAlignment: CrossAxisAlignment.center, [
  //     const SizedBox(height: 8),
  //     Container(
  //       width: 40,
  //       height: 4,
  //       decoration: BoxDecoration(
  //         color: Colors.black12,
  //         borderRadius: BorderRadius.circular(2),
  //       ),
  //     ),
  //     const SizedBox(height: 8),
  //     'Comment'.text.semiBold.size(16).make(),
  //     const SizedBox(height: 8),
  //   ]);
  // }
}
