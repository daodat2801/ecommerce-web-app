import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48, right: 176, left: 176),
      child: Row(
        children: [
          _buildStack(
              imgPath: AppImage.cloth1, title: "CLOTHS", itemCount: "5 items"),
          const SizedBox(width: 15),
          _buildStack(
              imgPath: AppImage.cloth2, title: "CLOTHS", itemCount: "5 items"),
          const SizedBox(width: 15),
          _buildStack(
              imgPath: AppImage.cloth3, title: "CLOTHS", itemCount: "5 items"),
          const SizedBox(width: 15),
          _buildStack(
              imgPath: AppImage.cloth4, title: "CLOTHS", itemCount: "5 items"),
          const SizedBox(width: 15),
          _buildStack(
              imgPath: AppImage.cloth5, title: "CLOTHS", itemCount: "5 items")
        ],
      ),
    );
  }
}
Widget _buildStack(
    {required String imgPath, required String title, required String itemCount}) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Image.asset(
        imgPath,
        width: 210,
        fit: BoxFit.scaleDown,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title,
              style: const TextStyle(
                  fontSize: 16, color: AppColors.white, fontWeight: FontWeight.w700)),
          Text(itemCount,
              style: const TextStyle(
                  fontSize: 14, color: AppColors.white, fontWeight: FontWeight.w400))
        ],
      )
    ],
  );
}
