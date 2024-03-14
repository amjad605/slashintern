import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slashintern/Features/home/data/Models/single_product_model/variation.dart';
import 'package:slashintern/Features/home/presentation/manger/detailedProductCubit/detailed_product_cubit.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/detailed_item_body.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/variataion_item.dart';
import 'package:slashintern/constants.dart';
import 'package:slashintern/core/utils/styles.dart';

class SelectColor extends StatelessWidget {
  const SelectColor({super.key, required this.product});
  final List<Variation> product;

  @override
  Widget build(BuildContext context) {
    int index = BlocProvider.of<DetailedProductCubit>(context).variationindex;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Select Color",
                style: Styles.Text18,
              ),
            ],
          ),
          int.tryParse(
                      "0xFF${product[0].productPropertiesValues![product[0].productPropertiesValues!.length > 1 ? 1 : 0].value!}") ==
                  null
              ? VariationItem(
                  image: product[index].productVarientImages![index].imagePath!,
                  index: index)
              : SizedBox(
                  height: 50,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: product.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, indx) => InkWell(
                            onTap: () {
                              BlocProvider.of<DetailedProductCubit>(context)
                                  .changeVariationIndex(indx);
                            },
                            child: Container(
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: index == indx
                                      ? Border.all(width: 2, color: kMainColor)
                                      : null,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Color(int.parse(
                                      "0xFF${product[indx].productPropertiesValues![1].value!}")),
                                  radius: 15,
                                )),
                          )),
                )
        ],
      ),
    );
  }
}
