import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:no_ai_sns/design_system/tokens/spacing.dart';
import 'package:no_ai_sns/features/search/presentation/providers/search_notifier/search_notifier.dart';
import 'package:no_ai_sns/features/search/presentation/sub_widgets/w_search_bar.dart';
import 'package:no_ai_sns/features/search/presentation/sub_widgets/w_search_tab_view.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  static const routeName = '/search';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint("SearchPage build");
    return Scaffold(
      body: SafeArea(
        child: VStack([
          SearchBarWidget(
            onChangeText: (text) {
              ref.read(searchProvider.notifier).textChange(text);
            },
            onTapEnter: () {
              ref.read(searchProvider.notifier).tapEnter();
            },
          ).pSymmetric(h: AppSpacing.lg),

          Expanded(child: SearchTabViewWidget()),
        ]),
      ),
    );
  }
}
