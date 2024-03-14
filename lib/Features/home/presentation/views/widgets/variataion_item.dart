import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slashintern/Features/home/presentation/manger/detailedProductCubit/detailed_product_cubit.dart';
import 'package:slashintern/constants.dart';

class VariationItem extends StatelessWidget {
  const VariationItem({
    super.key,
    required this.image,
    required this.index,
  });
  final String image;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<DetailedProductCubit>(context)
            .controller
            .animateToPage(index);
        BlocProvider.of<DetailedProductCubit>(context)
            .changeVariationIndex(index);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: index !=
                      BlocProvider.of<DetailedProductCubit>(context)
                          .variationindex
                  ? Colors.transparent
                  : kMainColor,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          clipBehavior: Clip.antiAlias,
          child: Image.network(
              width: 50, height: 50, scale: 8, fit: BoxFit.cover, image),
        ),
      ),
    );
  }
}
