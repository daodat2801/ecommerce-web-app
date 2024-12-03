import 'package:flutter/material.dart';

class SelectColorSection extends StatelessWidget {
  final List<Color> listProductColor;

  const SelectColorSection({super.key, required this.listProductColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: listProductColor.map((color) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
          ),
        );
      }).toList(),
    );
  }
}
