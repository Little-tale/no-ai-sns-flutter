import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NewPostTextFieldWidget extends StatelessWidget {
  const NewPostTextFieldWidget({super.key, required this.textChange});

  final void Function(String) textChange;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(12),
      child: Container(
        color: context.theme.colorScheme.surface,
        child: SizedBox(
          height: 120,
          child: TextFormField(
            maxLines: 15,
            decoration: InputDecoration(
              hintText: 'What\'s on your mind?',
              border: InputBorder.none,
              isDense: true,
            ),
            keyboardType: TextInputType.twitter,
            onChanged: textChange,
          ).pSymmetric(h: 16, v: 8),
        ),
      ),
    );
  }
}
