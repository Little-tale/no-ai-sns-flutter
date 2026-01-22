import 'package:flutter/material.dart';
import 'package:no_ai_sns/features/home/domain/entities/feed_item/feed_item_entity.gen.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/feed_item/w_feed_item.dart';
import 'package:no_ai_sns/features/home/presentation/sub_widgets/top_navigation_bar/w_top_navigation_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: const TopNavigationBarWidget(currentAlertCount: 4),
            toolbarHeight: 40,
            backgroundColor: context.theme.scaffoldBackgroundColor,
          ),
          SliverList.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return FeedItemWidget(
                entity: FeedItemEntity.dummy,
              ).pOnly(bottom: 16).pOnly(top: 8);
            },
          ),
        ],
      ),
    );
  }
}
