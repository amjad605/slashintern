import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LodingScreen extends StatelessWidget {
  const LodingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Shimmer.fromColors(
        baseColor: Color.fromARGB(87, 67, 66, 66),
        highlightColor: Color.fromARGB(187, 24, 22, 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: width * 0.45,
              height: height * 0.20,
              decoration: BoxDecoration(
                  color: Color.fromARGB(88, 89, 87, 87).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: width * 0.36,
                  height: height * 0.02,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(88, 89, 87, 87).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(
                  width: 3,
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor:
                      const Color.fromARGB(88, 89, 87, 87).withOpacity(0.7),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: width * 0.28,
                  height: height * 0.02,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(88, 89, 87, 87).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(
                  width: 3,
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor:
                      const Color.fromARGB(88, 89, 87, 87).withOpacity(0.7),
                ),
                const SizedBox(
                  width: 3,
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor:
                      const Color.fromARGB(88, 89, 87, 87).withOpacity(0.7),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
