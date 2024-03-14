import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slashintern/Features/home/data/Models/single_product_model/variation.dart';
import 'package:slashintern/Features/home/presentation/manger/detailedProductCubit/detailed_product_cubit.dart';
import 'package:slashintern/constants.dart';
import 'package:slashintern/core/utils/styles.dart';

class SelectMaterial extends StatelessWidget {
  const SelectMaterial({super.key, required this.Product});
  final List<Variation> Product;

  @override
  Widget build(BuildContext context) {
    int index = BlocProvider.of<DetailedProductCubit>(context).sizeIndex;
    int varindex =
        BlocProvider.of<DetailedProductCubit>(context).variationindex;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Select Material",
                style: Styles.Text18,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: height * 0.07,
                  child: ListView.builder(
                    itemCount: Product[index]
                        .productPropertiesValues!
                        .where((element) => element.property == "Materials")
                        .length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, indx) => InkWell(
                      onTap: () {
                        BlocProvider.of<DetailedProductCubit>(context)
                            .changeVariationIndex(indx);
                      },
                      child: AnimatedContainer(
                        margin: EdgeInsets.all(8),
                        height: 70,
                        width: width * 0.35,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: index == indx
                                  ? kMainColor
                                  : Color.fromARGB(255, 182, 182, 182),
                              blurRadius: 1,
                              spreadRadius: 1)
                        ], borderRadius: BorderRadius.circular(20)),
                        duration: const Duration(milliseconds: 200),
                        child: Center(
                            child: Text(
                          Product[varindex]
                              .productPropertiesValues!
                              .where(
                                  (element) => element.property == "Materials")
                              .toList()[indx]
                              .value!,
                          textAlign: TextAlign.center,
                          style: Styles.Text14.copyWith(
                            color: Colors.black,
                          ),
                        )),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
