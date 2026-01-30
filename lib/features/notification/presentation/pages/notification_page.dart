import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:no_ai_sns/features/notification/presentation/providers/notification_notifier/notification_notifier.dart';
import 'package:no_ai_sns/features/notification/presentation/sub_widgets/w_notification.item.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationPage extends ConsumerWidget {
  const NotificationPage({super.key});

  static const routeName = '/notification';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(notificationProvider.select((p) => p.alerts));
    final isLoading = ref.watch(
      notificationProvider.select((p) => p.isLoading),
    );
    final isInitError = ref.watch(
      notificationProvider.select((p) => p.isInitialError),
    );

    return Scaffold(
      appBar: AppBar(title: "Notifications".text.make()),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : isInitError
          ? Center(child: Text("Failed to load notifications"))
          : ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return NotificationItemWidget(item: list[index]);
              },
            ),
    );
  }
}
