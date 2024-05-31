import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function() addItem;
  final Function() removeItem;
  const HomeAppBar(
      {required this.addItem, required this.removeItem, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
        leading: InkWell(
          onTap: () {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: theme.colorScheme.onPrimary,
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.markupTest,
          style: TextStyle(color: theme.colorScheme.onPrimary),
        ),
        backgroundColor: theme.colorScheme.primary,
        actions: [
          IconButton(
            onPressed: () {
              removeItem();
            },
            icon: Icon(
              Icons.remove,
              color: theme.colorScheme.onPrimary,
            ),
          ),
          IconButton(
            onPressed: () {
              addItem();
            },
            icon: Icon(
              Icons.add,
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
