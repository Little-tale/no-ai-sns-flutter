import 'package:flutter/material.dart';
import 'package:no_ai_sns/design_system/design_system.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginRequiredWidget extends StatelessWidget {
  const LoginRequiredWidget({
    super.key,
    required this.tappedLogin,
    required this.tappedSignUp,
    required this.tappedMaybeLater,
  });

  final VoidCallback tappedLogin;
  final VoidCallback tappedSignUp;
  final VoidCallback tappedMaybeLater;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: context.screenWidth,
        child: VStack(
          spacing: AppSpacing.lg,
          crossAlignment: CrossAxisAlignment.center,
          [
            _profileSection(context),
            _textSection(context),
            _buttonSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buttonSection(BuildContext context) {
    return VStack(crossAlignment: CrossAxisAlignment.center, [
      _loginButtonSection().pSymmetric(h: AppSpacing.xxl),
      AppSpacing.md.heightBox,
      _signUpButtonSection(context).pSymmetric(h: AppSpacing.xxl),
      AppSpacing.md.heightBox,
      'Maybe Later'.text.light
          .color(context.colors.secondary)
          .size(14)
          .make()
          .p(8)
          .onTap(tappedMaybeLater),
    ]);
  }

  Widget _loginButtonSection() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.brand,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.symmetric(vertical: AppSpacing.md),
        ),
        onPressed: tappedLogin,
        child: 'Log In'.text.size(16).bold.make(),
      ),
    );
  }

  Widget _signUpButtonSection(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: context.colors.inverseSurface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(width: 0.5, color: AppColors.dividerLight),
          ),
          padding: EdgeInsets.symmetric(vertical: AppSpacing.md),
        ),
        onPressed: tappedSignUp,
        child: 'Sign Up'.text.size(16).bold.make(),
      ),
    );
  }

  Widget _profileSection(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: context.colors.onPrimary,
      child: Icon(Icons.person, size: 50),
    );
  }

  Widget _textSection(BuildContext context) {
    return VStack(crossAlignment: CrossAxisAlignment.center, [
      'Login Required'.text.bold.size(24).make(),
      AppSpacing.md.heightBox,
      'sign in to create posts, follow users,\nand interact with the community\nthrough AI-vertified account'
          .text
          .align(TextAlign.center)
          .size(16)
          .light
          .make(),
      // AppSpacing.lg.heightBox,
    ]);
  }
}
