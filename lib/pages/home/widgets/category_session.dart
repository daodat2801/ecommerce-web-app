import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:ecommerce_web_app/commons/utils/extensions.dart';
import 'package:ecommerce_web_app/pages/home/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CategorySession extends StatelessWidget {
  const CategorySession({super.key});

  @override
  Widget build(BuildContext context) {
    final height = context.deviceSize.width * 0.5;
    final localization = AppLocalizations.of(context)!;
    return Container(
      height: height,
      color: AppColors.secondaryBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 250),
        child: Column(
          children: [
            Text(
              localization.home_category,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              localization.home_choose_cate_txt,
              style:
                  const TextStyle(color: AppColors.textSecondaryColor, fontSize: 14),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
                child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: [
                CategoryCard(
                  name: localization.home_men,
                  imagePath: AppImage.cloth1,
                  cellsOfHeight: 2,
                  cellsOfWidth: 2,
                ),
                CategoryCard(
                  name: localization.home_women,
                  imagePath: AppImage.cloth5,
                  cellsOfHeight: 2,
                  cellsOfWidth: 1,
                ),
                CategoryCard(
                  name: localization.home_accessories,
                  imagePath: AppImage.cloth3,
                  cellsOfHeight: 1,
                  cellsOfWidth: 1,
                ),
                CategoryCard(
                  name: localization.home_kid,
                  imagePath: AppImage.cloth4,
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
