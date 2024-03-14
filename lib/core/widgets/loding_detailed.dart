import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/brand_logo.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/description_container.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/detailed_item_body.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/detalied_Sliding_Images.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/select_color.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/select_size.dart';
import 'package:slashintern/core/utils/styles.dart';

class LoadingDetailed extends StatelessWidget {
  const LoadingDetailed({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black12,
      highlightColor: Colors.black54,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SlidingImages(count: 1, image: ""),

            SmallProductImage(images: ""),

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
                          "",
                          style: Styles.Text18,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "EGP ",
                          style: Styles.Text14,
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      BrandLogo(
                          width: MediaQuery.of(context).size.width * 2,
                          image: ''),
                      Text('')
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            SelectColor(
              product: [],
            ),

            //describtion //

            SelectSize(
              Product: [],
            ),

            const DescriptionContainer(
              description: "",
            ),
            // Button
          ],
        ),
      ),
    );
  }
}
