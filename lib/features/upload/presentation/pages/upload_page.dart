import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:no_ai_sns/core/presentation/w_ios_button.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
import 'package:no_ai_sns/features/upload/presentation/providers/upload_feed_notifier.dart';
import 'package:no_ai_sns/features/upload/presentation/sub_widgets/w_new_post_text_field.dart';
import 'package:no_ai_sns/features/upload/presentation/sub_widgets/w_new_post_upload_images.dart';
import 'package:velocity_x/velocity_x.dart';

class UploadPage extends ConsumerStatefulWidget {
  const UploadPage({super.key});
  static const routeName = '/upload';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _UploadPageState();
}

class _UploadPageState extends ConsumerState<UploadPage> {
  @override
  Widget build(BuildContext context) {
    final images = ref.watch(uploadFeedProvider.select((p) => p.images));

    return Scaffold(
      appBar: AppBar(
        title: 'New Post'.text.make(),
        actions: [
          if (images.isEmpty)
            'Post'.text
                .color(context.colors.primary.withAlpha(120))
                .size(16)
                .make()
                .pSymmetric(h: AppSpacing.md)
          else
            'Post'.text
                .size(16)
                .make()
                .pSymmetric(h: AppSpacing.md)
                .onIOSTap(() {}),
        ],
      ),
      body: SingleChildScrollView(
        child: VStack([
          // Image Section
          NewPostuploadImagesWidget(
            currentMax: 5,
            images: images,
            onAddImages: (xFiles) {
              final notifier = ref.read(uploadFeedProvider.notifier);
              notifier.addImages(xFiles);
            },
            onRemoveImage: (index) {
              final notifier = ref.read(uploadFeedProvider.notifier);
              notifier.removeAt(index);
            },
          ).pOnly(bottom: AppSpacing.md),
          // Text Field Section
          NewPostTextFieldWidget(
            textChange: (text) {
              final notifier = ref.read(uploadFeedProvider.notifier);
              notifier.textChanged(text);
            },
          ).pSymmetric(h: AppSpacing.sm).pOnly(bottom: AppSpacing.xxl),

          _description(
            context,
          ).pSymmetric(h: AppSpacing.sm).pOnly(bottom: AppSpacing.md),
        ]),
      ),
    ).onTap(() {
      FocusScope.of(context).unfocus();
    });
  }

  Widget _description(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        color: context.colors.outline,
        strokeWidth: 1,
        dashPattern: const [4, 4],
        radius: const Radius.circular(12),
      ),

      child: VStack([
        HStack([
          Icon(Icons.info, color: context.colors.inversePrimary, size: 24),
          AppSpacing.md.widthBox,
          'AI-Verified Content Only'.text.semiBold.size(16).make(),
        ]).pSymmetric(h: AppSpacing.sm),

        AppSpacing.md.heightBox,

        'To maintain community standards, only AI-verified content is allowed.'
            .text
            .size(14)
            .make()
            .pSymmetric(h: AppSpacing.sm),
      ]).p(AppSpacing.md),
    );
  }
}
