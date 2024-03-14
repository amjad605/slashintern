import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:slashintern/Features/Splash/presentation/views/widgets/bottom_sheet.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 100), () {
      showBottomSheet(
          backgroundColor:
              const Color.fromARGB(255, 68, 67, 67).withOpacity(0.2),
          elevation: 0,
          context: context,
          enableDrag: false,
          builder: (context) => const CustomBottomSheet());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                child: Image.asset(
                  "assets/images/logo.png",
                  scale: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
