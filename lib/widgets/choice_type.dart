import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/filters_provider.dart';

class ChoiceType extends ConsumerWidget {
  ChoiceType(
      {super.key,
      required this.title,
      required this.detail,
      required this.filter});
  final Filter filter;
  final String title;
  final String detail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    final active = activeFilters[filter]!;
    return SwitchListTile(
      value: active,
      onChanged: (isChecked) {
        ref.read(filtersProvider.notifier).setFilter(filter, isChecked);
      },
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      subtitle: Text(
        detail,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ),
      activeColor: Theme.of(context).colorScheme.onTertiaryContainer,
      contentPadding: const EdgeInsets.only(left: 32, right: 20),
    );
  }
}
