import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:no_ai_sns/core/constants/app_size.dart';
import 'package:no_ai_sns/core/presentation/w_ios_button.dart';
import 'package:no_ai_sns/design_system/design_system.dart';
import 'package:velocity_x/velocity_x.dart';

class NewPostuploadImagesWidget extends StatefulWidget {
  const NewPostuploadImagesWidget({super.key});

  @override
  State<NewPostuploadImagesWidget> createState() =>
      _NewPostuploadImagesWidgetState();
}

class _NewPostuploadImagesWidgetState extends State<NewPostuploadImagesWidget> {
  final int _currentMax = 5;
  final List<XFile> _images = [];
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickFromGallery() async {
    final remaining = _currentMax - _images.length;
    if (remaining <= 0) return;
    if (remaining == 1) {
      final single = await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
      );
      if (!mounted) return;
      if (single == null) return;
      setState(() => _images.add(single));
      return;
    }

    final picked = await _picker.pickMultiImage(
      limit: remaining,
      imageQuality: 85,
    );
    if (!mounted) return;
    if (picked.isEmpty) return;
    setState(() => _images.addAll(picked));
  }

  Future<void> _pickFromCamera() async {
    if (_images.length >= _currentMax) return;
    final picked = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 85,
    );
    if (!mounted) return;
    if (picked == null) return;
    setState(() => _images.add(picked));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.max,
      children: [
        HStack([
          Spacer(),
          '${_images.length} / $_currentMax'.text
              .bodyMedium(context)
              .make()
              .pOnly(bottom: AppSpacing.md),
          AppSpacing.md.widthBox,
        ]),

        LayoutBuilder(
          builder: (context, constraints) {
            const spacing = 8.0;
            const columns = 3;
            const hPadding = AppSpacing.sm * 2;
            final totalSpacing = spacing * (columns - 1);
            final itemSize =
                (constraints.maxWidth - totalSpacing - hPadding) / columns;

            return Wrap(
              spacing: spacing,
              runSpacing: spacing,
              children:
                  _images
                      .asMap()
                      .entries
                      .map(
                        (entry) => SizedBox(
                          width: itemSize,
                          height: itemSize,
                          child: _imageItem(entry.value, entry.key),
                        ),
                      )
                      .toList() +
                  [
                    SizedBox(
                      width: itemSize,
                      height: itemSize,
                      child: addImageItem(context),
                    ),
                  ],
            );
          },
        ),
        const SizedBox(height: 12),
      ],
    );
  }

  Widget _imageItem(XFile img, int index) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.file(File(img.path), fit: BoxFit.cover),
          ),
        ),

        Positioned(
          top: 4,
          right: 4,
          child:
              ClipOval(
                child: Container(
                  color: Colors.black.withAlpha(140),
                  padding: const EdgeInsets.all(4),
                  child: Icon(Icons.close, size: 16, color: Colors.white),
                ),
              ).onTap(() {
                setState(() {
                  _images.removeAt(index);
                });
              }),
        ),
      ],
    );
  }

  Widget addImageItem(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        color: AppColors.brand.withAlpha(120),
        child: const Center(child: Icon(Icons.add_a_photo_outlined, size: 40)),
      ).expand(),
    ).onIOSTap(() {
      showBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            width: double.infinity,
            child: VStack(crossAlignment: CrossAxisAlignment.center, [
              'Select Image Source'.text.size(12).make().p(AppSpacing.md),

              Container(
                color: context.colors.onSurface.withAlpha(120),
                height: 0.5,
                width: double.infinity,
              ),

              _actionSheetButtonWidget(
                context: context,
                text: 'Photo Library',
                leadingIcon: Icons.photo_library_outlined,
              ).onIOSTap(() {
                context.pop();
                _images.length >= _currentMax ? null : _pickFromGallery();
              }),

              Container(
                color: context.colors.onSurface.withAlpha(120),
                height: 0.5,
                width: double.infinity,
              ),

              _actionSheetButtonWidget(
                context: context,
                text: 'Take Photo',
                leadingIcon: Icons.camera_alt_outlined,
              ).onIOSTap(() {
                context.pop();
                _images.length >= _currentMax ? null : _pickFromCamera();
              }),

              context.bottomSafeArea.heightBox,
            ]),
          );
        },
      );
    });
  }

  Widget _actionSheetButtonWidget({
    required BuildContext context,
    required String text,
    required IconData leadingIcon,
  }) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Icon(leadingIcon, size: 30),
        ),
        Align(
          alignment: Alignment.center,
          child: text.text.bold.size(18).make(),
        ),
      ],
    ).pSymmetric(h: AppSpacing.md, v: AppSpacing.lg);
  }
}
