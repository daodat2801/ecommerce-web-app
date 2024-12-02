import 'package:ecommerce_web_app/pages/home/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CategorySession extends StatelessWidget {
  const CategorySession({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("data"),
        const SizedBox(
          height: 10,
        ),
        Expanded(
            child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          axisDirection: AxisDirection.right,
          children: const [
            CategoryCard(
              name: "MEN",
              imagePath: "assets/images/grey_background.png",
              cellsOfHeight: 2,
              cellsOfWidth: 2,
            ),
            CategoryCard(
              name: "WOMEN",
              imagePath: "assets/images/grey_background.png",
              cellsOfHeight: 2,
              cellsOfWidth: 1,
            ),
            CategoryCard(
              name: "ACCESSORIES",
              imagePath: "assets/images/grey_background.png",
              cellsOfHeight: 1,
              cellsOfWidth: 1,
            ),
            CategoryCard(
              name: "KIDS",
              imagePath: "assets/images/grey_background.png",
              cellsOfHeight: 1,
              cellsOfWidth: 1,
            ),
          ],
        ))
      ],
    );
  }
}
