import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:slashintern/Features/home/data/Models/product_model/product_model.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/brand_logo.dart';
import 'package:slashintern/core/utils/routes.dart';
import 'package:slashintern/core/utils/styles.dart';

class CustomHomeItem extends StatelessWidget {
  const CustomHomeItem({
    super.key,
    required this.width,
    required this.product,
  });

  final double width;
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              GoRouter.of(context)
                  .push(AppRouter.KDetailedeView, extra: product.id);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAlias,
              child: Hero(
                tag: product
                    .productVariations![0].productVarientImages![0].imagePath!,
                child: CachedNetworkImage(
                  imageUrl: product.productVariations![0]
                      .productVarientImages![0].imagePath!,
                  fit: BoxFit.cover,
                  width: width * 0.175,
                  placeholder: (context, url) => Center(
                    child: LoadingAnimationWidget.fourRotatingDots(
                        color: Colors.black, size: 30),
                  ),
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
          //),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                  child: Text(
                product.name!,
                style: Styles.Text14,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )),
              BrandLogo(
                  width: width, image: product.brands!.brandLogoImagePath!)
            ],
          ),
          Row(
            children: [
              Text(
                "Egp ${product.productVariations![0].price}",
                style: Styles.Text14,
              ),
              const Spacer(),
              InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(220),
                  child: Icon(Icons.favorite_border)),
              IconButton(
                  splashRadius: 2,
                  iconSize: 20,
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart)),
            ],
          )
        ],
      ),
    );
  }
}
