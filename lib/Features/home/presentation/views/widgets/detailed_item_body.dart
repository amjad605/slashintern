import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:slashintern/Features/home/presentation/manger/detailedProductCubit/detailed_product_cubit.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/brand_logo.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/description_container.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/detalied_Sliding_Images.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/select_color.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/select_material.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/select_size.dart';
import 'package:slashintern/constants.dart';
import 'package:slashintern/core/utils/styles.dart';

class DetailedItemBody extends StatefulWidget {
  const DetailedItemBody({super.key});

  @override
  State<DetailedItemBody> createState() => _DetailedItemBodyState();
}

class _DetailedItemBodyState extends State<DetailedItemBody> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BlocBuilder<DetailedProductCubit, DetailedProductState>(
      builder: (context, state) {
        if (state is DetailedProductsSuccess) {
          var isColor = false;
          var isSize = false;
          var isMaterial = false;
          int index =
              BlocProvider.of<DetailedProductCubit>(context).variationindex;
          final product = state.products.variations![index];

          //final productCount = state.products.count!;
          for (var i in product.productPropertiesValues!) {
            if (i.property == "Size") {
              isSize = true;
            } else if (i.property == "Color") {
              isColor = true;
            } else if (i.property == "Materials") {
              isMaterial = true;
            }
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                SlidingImages(
                    count: product.productVarientImages!.length,
                    image: product.productVarientImages!),

                SmallProductImage(
                  images: product.productVarientImages!,
                ),

                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.products.name!,
                              style: Styles.Text18,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "EGP ${product.price}",
                              style: Styles.Text14,
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          BrandLogo(
                              width: MediaQuery.of(context).size.width * 2,
                              image: state.products.brandImage!),
                          Text(state.products.brandName!)
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                isColor == true
                    ? SelectColor(
                        product: state.products.variations!,
                      )
                    : const SizedBox(),

                isSize
                    ? SelectSize(
                        Product: state.products.variations!,
                      )
                    : const SizedBox(),
                isMaterial
                    ? SelectMaterial(
                        Product: state.products.variations!,
                      )
                    : const SizedBox(),
                DescriptionContainer(
                  description: state.products.description!,
                ),
                // Button
              ],
            ),
          );
        } else if (state is DetailedProductsFailure) {
          return Center(child: Text(state.errMsg));
        } else {
          return Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
                color: kMainColor, size: 34),
          );
        }
      },
    );
  }
}

class SmallProductImage extends StatelessWidget {
  const SmallProductImage({
    super.key,
    required this.images,
  });
  final images;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 80,
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, indx) =>
                  SmallItemIndex(image: images[indx].imagePath, index: indx),
              separatorBuilder: (ctx, indx) => const SizedBox(
                    width: 5,
                  ),
              itemCount: images.length),
        )
      ],
    );
  }
}

class SmallItemIndex extends StatelessWidget {
  const SmallItemIndex({
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
        BlocProvider.of<DetailedProductCubit>(context).changeIndex(index);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color:
                  index != BlocProvider.of<DetailedProductCubit>(context).indx
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
