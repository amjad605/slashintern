import 'package:flutter/material.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:slashintern/constants.dart';
import 'package:slashintern/core/utils/styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Slash",
              style: Styles.textHeader,
            ),
            Text(
              ".",
              style: Styles.textHeader.copyWith(color: kMainColor),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: HomeViewBody(),
    );
  }
}
