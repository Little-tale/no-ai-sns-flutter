import 'package:flutter/material.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/w_profile_circle_border.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [Text('Home'), ProfileCircleBorderWidget(size: 35)],
          ),
        ),
      ),
    );
  }
}
