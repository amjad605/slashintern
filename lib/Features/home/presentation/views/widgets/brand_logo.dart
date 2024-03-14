import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class BrandLogo extends StatelessWidget {
  const BrandLogo({
    super.key,
    required this.width,
    required this.image,
  });

  final double width;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      width: width * 0.03,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.cover,
          placeholder: (context, url) => Center(
                child: LoadingAnimationWidget.fourRotatingDots(
                    color: Colors.black, size: 30),
              ),
          errorWidget: (context, url, error) =>
              Image.asset("assets/images/logo.png")),
    );
  }
}
