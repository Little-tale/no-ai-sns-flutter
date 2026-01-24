import 'package:flutter/material.dart';
import 'package:no_ai_sns/features/notification/domain/entities/alert_/alert_entity.gen.dart';
import 'package:no_ai_sns/features/notification/presentation/sub_widgets/w_notification.item.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  static const routeName = '/notification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "Notifications".text.make()),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return NotificationItemWidget(item: AlertEntity.dummy);
        },
      ),
    );
  }
}
