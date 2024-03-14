import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:slashintern/Features/home/presentation/manger/homeProductsCubit/home_products_cubit.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/custom_home_item.dart';
import 'package:slashintern/core/widgets/loading.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: BlocBuilder<HomeProductsCubit, HomeProductsState>(
        builder: (context, state) {
          if (state is HomeProductsSuccess) {
            return MasonryGridView.builder(
                itemCount: state.products.length,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                itemBuilder: (ctx, indx) => CustomHomeItem(
                      width: width,
                      product: state.products[indx],
                    ));
          } else if (state is HomeProductsFailure) {
            return Center(
              child: Text(state.errMsg),
            );
          }
          return MasonryGridView.builder(
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
              itemBuilder: (ctx, idx) => LodingScreen());
        },
      ),
    );
  }
}
