import 'package:flutter/material.dart';
import 'package:olearis_test/config/constant/constant.dart';

class GridItem extends StatelessWidget {
  final String title;
  const GridItem({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: theme.colorScheme.secondary),
          borderRadius: allBorderRadius),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: theme.colorScheme.secondary),
        ),
      ),
    );
  }
}
