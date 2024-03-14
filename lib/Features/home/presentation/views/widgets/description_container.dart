import 'package:flutter/material.dart';
import 'package:slashintern/core/utils/styles.dart';

class DescriptionContainer extends StatelessWidget {
  const DescriptionContainer({super.key, required this.description});
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(255, 255, 255, 0.122),
      ),
      child: ExpansionTile(
        shape: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        backgroundColor: const Color.fromARGB(31, 69, 68, 68),
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
        childrenPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        expandedCrossAxisAlignment: CrossAxisAlignment.end,
        title: Text(
          "Description",
          style: Styles.Text18,
        ),
        children: [
          Text(
            description,
            style: Styles.Text14,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
