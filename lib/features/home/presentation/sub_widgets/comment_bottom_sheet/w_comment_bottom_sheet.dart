import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
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
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(commentControllerProvider(postId: widget.postID).notifier)
          .load();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
      child: Container(
        color: context.theme.scaffoldBackgroundColor,
        child: _body(widget.controller, context),
      ),
    );
  }

  Widget _body(ScrollController controller, BuildContext context) {
    return Column(
      children: [
        // _bottomSheetTop(),
        // List
        _commentList(controller).expand(),

        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _profileWidget(context),
            const SizedBox(width: AppSpacing.sm),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                  vertical: AppSpacing.xs,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: context.theme.primaryColor,
                    width: 0.4,
                  ),
                ),
                child: _commentWidget(context),
              ),
            ),
          ],
        ).pSymmetric(h: AppSpacing.md, v: AppSpacing.md),
      ],
    );
  }

  Widget _commentWidget(BuildContext context) {
    return HStack([
      Expanded(
        child: TextFormField(
          maxLines: 3,
          minLines: 1,
          onChanged: (value) {},
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
            FocusScope.of(context).unfocus();
          },
        ),
      ),
    ]);
  }

  Widget _bottomSheetTop() {
    return VStack(crossAlignment: CrossAxisAlignment.center, [
      const SizedBox(height: 8),
      Container(
        width: 40,
        height: 4,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      const SizedBox(height: 8),
      'Comment'.text.semiBold.size(16).make(),
      const SizedBox(height: 8),
    ]);
  }

  Widget _commentList(ScrollController controller) {
    final state = ref.watch(commentControllerProvider(postId: widget.postID));
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state.errorMessage != null) {
      return Center(child: state.errorMessage!.text.semiBold.size(16).make());
    }
    if (state.items.isEmpty) {
      return Center(child: 'No comments yet'.text.semiBold.size(24).make());
    }
    return ListView.builder(
      controller: controller,
      itemCount: state.items.length,
      itemBuilder: (context, index) {
        return CommentItemWidget(item: state.items[index]);
      },
    );
  }

  Widget _profileWidget(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: context.colors.onPrimary,
      backgroundImage: widget.userProfileUrl != null
          ? CachedNetworkImageProvider(widget.userProfileUrl!)
          : null,
      child: widget.userProfileUrl == null
          ? const Icon(Icons.person, size: 30)
          : null,
    );
  }
}
