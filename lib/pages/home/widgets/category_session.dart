import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/utils/extensions.dart';
import 'package:ecommerce_web_app/pages/home/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CategorySession extends StatelessWidget {
  const CategorySession({super.key});

  @override
  Widget build(BuildContext context) {
    final height = context.deviceSize.width * 0.5;

    return Container(
      height: height,
      color: AppColors.secondaryBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 250),
        child: Column(
          children: [
            const Text(
              "Category",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "Choose your category here...",
              style:
                  TextStyle(color: AppColors.textSecondaryColor, fontSize: 14),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
                child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
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
        ),
      ),
    );
  }
}
