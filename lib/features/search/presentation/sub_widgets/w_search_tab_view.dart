import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:no_ai_sns/features/search/presentation/providers/search_notifier/search_notifier.dart';
import 'package:no_ai_sns/features/search/presentation/sub_widgets/feed_result/w_feed_result.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchTabViewWidget extends HookConsumerWidget {
  const SearchTabViewWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTabController(
      initialLength: SearchTabCase.values.length,
    );

    ref.listen(searchProvider.select((p) => p.selectedTab), (previous, next) {
      if (controller.index != next) {
        controller.animateTo(next);
      }
    });

    useEffect(() {
      void listener() {
        if (!controller.indexIsChanging) {
          ref.read(searchProvider.notifier).selectTab(controller.index);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller, ref]);

    return Column(
      children: [
        TabBar(
          controller: controller,
          indicatorColor: context.colors.onPrimary,
          indicatorSize: TabBarIndicatorSize.tab,
          splashFactory: NoSplash.splashFactory,
          dividerColor: context.colors.primary,
          labelStyle: TextStyle(
            color: context.colors.onSurface,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          indicatorWeight: 3,
          tabs: [
            Tab(height: 50, child: 'Posts'.text.size(16).make()),
            Tab(height: 50, child: 'Users'.text.size(16).make()),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: controller,
            children: [
              FeedResultWidget(),
              Center(child: 'Users View'.text.make()),
            ],
          ),
        ),
      ],
    );
  }
}
