import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slashintern/core/utils/routes.dart';
import 'package:slashintern/core/utils/styles.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style:
                              Styles.textHeader.copyWith(color: Colors.black),
                        ),
                        Text(
                          "We're proud to feature the best local brands in our app.Shop here and find products you'll love. ",
                          style: Styles.Text18.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.person),
                      onPressed: () {
                        GoRouter.of(context)
                            .pushReplacement(AppRouter.KhomeView);
                      },
                      label: Text(
                        "Get Started",
                        style: Styles.Text14,
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 32, 31, 31),
                          foregroundColor: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.455,
          child: SlideInLeft(
            from: 1000,
            delay: Duration(milliseconds: 180),
            duration: Duration(milliseconds: 1200),
            child: Image.asset(
              "assets/images/boy.PNG",
              scale: 2,
            ),
          ),
        )
      ],
    );
  }
}
