import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slashintern/Features/home/presentation/manger/detailedProductCubit/detailed_product_cubit.dart';

class SlidingImages extends StatelessWidget {
  const SlidingImages({super.key, required this.count, required this.image});
  final int count;
  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      // height: 400,
      child: CarouselSlider.builder(
        // enableInfiniteScroll: true,
        carouselController:
            BlocProvider.of<DetailedProductCubit>(context).controller,
        itemCount: count,
        itemBuilder: (ctx, idx, i) {
          return MainDeatailedImage(image: image[idx].imagePath!);
        },
        options: CarouselOptions(
          enableInfiniteScroll: false,
          aspectRatio: 11 / 8,
          initialPage: 0,
          viewportFraction: 0.6,
          enlargeCenterPage: true,
          onPageChanged: (int index, _) {
            BlocProvider.of<DetailedProductCubit>(context).changeIndex(index);

            print(index);
          },
          // height: height * 0.35
        ),
      ),
    );
  }
}

// the image  Widget in the Sliding Widget
class MainDeatailedImage extends StatelessWidget {
  const MainDeatailedImage({super.key, required this.image});
  final image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        clipBehavior: Clip.antiAlias,
        child: Hero(
          tag: image,
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
