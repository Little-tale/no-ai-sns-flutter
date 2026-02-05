import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velocity_x/velocity_x.dart';

enum SearchTabCase { posts, users }

class SearchTabViewWidget extends HookWidget {
  const SearchTabViewWidget({super.key, required this.onTabChange});

  final Function(SearchTabCase) onTabChange;

  @override
  Widget build(BuildContext context) {
    final controller = useTabController(
      initialLength: SearchTabCase.values.length,
    );

    useEffect(() {
      void listener() {
        if (!controller.indexIsChanging) {
          final currentIndex = controller.index;
          onTabChange(SearchTabCase.values[currentIndex]);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

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
              Center(child: 'Posts View'.text.make()),
              Center(child: 'Users View'.text.make()),
            ],
          ),
        ),
      ],
    );
  }
}
