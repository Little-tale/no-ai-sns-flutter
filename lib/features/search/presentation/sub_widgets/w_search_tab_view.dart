import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchTabViewWidget extends StatelessWidget {
  const SearchTabViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            indicatorColor: context.colors.onPrimary,
            indicatorSize: TabBarIndicatorSize.tab,
            splashFactory: NoSplash.splashFactory,
            dividerColor: context.colors.primary,
            labelStyle: const TextStyle(
              color: Colors.white,
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
              children: [
                Center(child: 'Posts View'.text.make()),
                Center(child: 'Users View'.text.make()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
