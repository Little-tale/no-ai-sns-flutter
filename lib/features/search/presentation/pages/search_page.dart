import 'package:flutter/material.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
import 'package:no_ai_sns/features/search/presentation/sub_widgets/w_search_bar.dart';
import 'package:no_ai_sns/features/search/presentation/sub_widgets/w_search_tab_view.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  static const routeName = '/search';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: VStack([
          SearchBarWidget(
            onChangeText: (text) {},
            onTapEnter: () {},
          ).pSymmetric(h: AppSpacing.lg),
          Expanded(child: SearchTabViewWidget()),
        ]),
      ),
    );
  }
}
