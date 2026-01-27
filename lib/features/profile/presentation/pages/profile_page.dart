import 'package:flutter/material.dart';
import 'package:no_ai_sns/features/profile/presentation/sub_widgets/w_profile_top_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Profile'),
            ProfileTopSectionWidget(
              profileUrlString:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx2Z4LcJOPwaTwwqZ-qIxXxKicRR6sa-Ge6A&s",
              userName: 'Alex Rivera',
              userEmail: 'alex.rivera@example.com',
            ),
          ],
        ),
      ),
    );
  }
}
