import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:no_ai_sns/design_system/tokens/colors.dart';

class ProfileCircleBorderWidget extends StatelessWidget {
  const ProfileCircleBorderWidget({
    super.key,
    required this.size,
    this.imageURLString,
  });

  final double size;
  final String? imageURLString;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [AppColors.brand, AppColors.brandDark],
        ),
      ),
      padding: const EdgeInsets.all(3),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: ClipOval(child: _imageSection(imageURLString: imageURLString)),
      ),
    );
  }

  Widget _imageSection({String? imageURLString}) {
    return imageURLString != null
        ? CachedNetworkImage(
            width: size,
            height: size,
            imageUrl: imageURLString,
            fit: BoxFit.cover,
          )
        : Icon(Icons.person, size: size);
  }
}
