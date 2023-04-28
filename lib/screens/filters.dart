import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/choice_type.dart';
import 'package:meals/providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          ChoiceType(
            title: 'Gluten-free',
            detail: 'Only include gluten-free meals',
            filter: Filter.glutenFree,
          ),
          ChoiceType(
            title: 'Lactose-free',
            detail: 'Only include Lactose-free meals',
            filter: Filter.lactoseFree,
          ),
          ChoiceType(
            title: 'Vegetarian',
            detail: 'Only include vegetarian meals',
            filter: Filter.vegetarian,
          ),
          ChoiceType(
            title: 'Vegan',
            detail: 'Only include vegan meals',
            filter: Filter.vegan,
          ),
        ],
      ),
    );
  }
}
