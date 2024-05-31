import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:olearis_test/config/constant/constant.dart';

class LogoSliver extends StatelessWidget {
  const LogoSliver({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverToBoxAdapter(
      child: Center(
        child: Padding(
          padding: allPadding,
          child: Container(
            padding: allPadding,
            decoration: BoxDecoration(
              border: Border.all(color: theme.colorScheme.secondary),
              borderRadius: allBorderRadius,
            ),
            child: SvgPicture.asset(logoPath),
          ),
        ),
      ),
    );
  }
}
