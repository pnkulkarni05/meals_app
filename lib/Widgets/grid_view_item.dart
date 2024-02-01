import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          category.color.withOpacity(0.75),
          category.color.withOpacity(0.50)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Text(category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.background,
              )),
    );
  }
}
