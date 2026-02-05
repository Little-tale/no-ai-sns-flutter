import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:no_ai_sns/design_system/design_system.dart';
import 'package:no_ai_sns/features/search/presentation/providers/search_notifier/search_notifier.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchBarWidget extends HookConsumerWidget {
  const SearchBarWidget({
    super.key,
    required this.onChangeText,
    required this.onTapEnter,
  });

  final Function(String) onChangeText;
  final VoidCallback onTapEnter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final textValue = useValueListenable(controller);

    ref.listen(searchProvider.select((p) => p.searchText), (prev, next) {
      if (prev != next) {
        controller.text = next;
      }
    });

    return SizedBox(
      height: 44,
      child: SearchBar(
        controller: controller,
        hintText: 'Search Feeds...',
        onChanged: (value) {
          onChangeText(value);
        },
        onSubmitted: (_) {
          onTapEnter();
        },
        leading: Icon(
          Icons.search,
          color: context.colors.primary,
        ).pOnly(left: AppSpacing.sm),
        trailing: textValue.text.isEmpty
            ? null
            : [
                IconButton(
                  style: ButtonStyle(
                    splashFactory: NoSplash.splashFactory,
                    overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  ),
                  onPressed: () {
                    controller.clear();
                    FocusScope.of(context).unfocus();
                  },
                  icon: Icon(Icons.cancel, color: context.colors.outline),
                ),
              ],
      ),
    );
  }
}
