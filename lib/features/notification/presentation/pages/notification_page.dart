import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:no_ai_sns/core/presentation/w_ios_button.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
import 'package:no_ai_sns/features/home/presentation/providers/home_notifier/home_notifier.dart';
import 'package:no_ai_sns/features/notification/presentation/providers/notification_notifier/notification_notifier.dart';
import 'package:no_ai_sns/features/notification/presentation/sub_widgets/w_notification.item.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationPage extends StatefulHookConsumerWidget {
  const NotificationPage({super.key});

  static const routeName = '/notification';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationPageState();
}

class _NotificationPageState extends ConsumerState<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(notificationProvider);
    final controller = useScrollController();

    useEffect(() {
      void onScroll() {
        _onScroll(controller, ref);
      }

      controller.addListener(onScroll);
      return () => controller.removeListener(onScroll);
    }, [controller]);

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          ref.read(homeProvider.notifier).reLoadAlertCount();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: "Notifications".text.make(),
          actions: [
            'All READ'.text
                .make()
                .onIOSTap(() {
                  ref.read(notificationProvider.notifier).tappedAllRead();
                })
                .pOnly(right: AppSpacing.lg),
          ],
        ),
        body: state.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) =>
              const Center(child: Text("Failed to load notifications")),
          data: (data) {
            if (data.isInitialError) {
              return const Center(child: Text("Failed to load notifications"));
            }
            return ListView.builder(
              controller: controller,
              itemCount: data.alerts.length,
              itemBuilder: (context, index) {
                final item = data.alerts[index];
                return NotificationItemWidget(
                  item: item,
                  tappedItem: () {
                    debugPrint('tapped ${item.alertID}');
                    ref
                        .read(notificationProvider.notifier)
                        .tappedItem(item: item, index: index);
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }

  // Pagination
  static void _onScroll(ScrollController controller, WidgetRef ref) {
    if (!controller.hasClients) return;
    if (controller.position.pixels > controller.position.maxScrollExtent - 40) {
      debugPrint("Reached end of list");
      ref.read(notificationProvider.notifier).moreRequest();
    }
  }
}
