import 'package:flutter/material.dart';
import 'package:slashintern/Features/home/presentation/views/widgets/detailed_item_body.dart';
import 'package:slashintern/core/utils/styles.dart';

class DetailedItemView extends StatelessWidget {
  const DetailedItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Product Details",
          style: Styles.textSemiHeader,
        ),
      ),
      body: const DetailedItemBody(),
    );
  }
}
