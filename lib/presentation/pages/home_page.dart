import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:olearis_test/config/constant/constant.dart';
import 'package:olearis_test/presentation/bloc/home/home_cubit.dart';
import 'package:olearis_test/presentation/bloc/home/home_state.dart';
import 'package:olearis_test/presentation/widgets/grid_item.dart';
import 'package:olearis_test/presentation/widgets/home_app_bar.dart';
import 'package:olearis_test/presentation/widgets/logo_sliver.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return Scaffold(
      appBar: HomeAppBar(addItem: cubit.addItem, removeItem: cubit.removeItem),
      body: LayoutBuilder(builder: (context, constraints) {
        return CustomScrollView(
          slivers: [
            const LogoSliver(),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return SliverGrid.count(
                  crossAxisCount: crossAxisCount,
                  mainAxisSpacing: mainAxisSpacing,
                  crossAxisSpacing: crossAxisSpacing,
                  childAspectRatio: childAspectRatio,
                  children: state.itemsList
                      .map((title) => GridItem(title: title))
                      .toList(),
                );
              },
            )
          ],
        );
      }),
    );
  }
}
