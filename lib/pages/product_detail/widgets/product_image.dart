import 'package:flutter/material.dart';
import '../../../commons/constants/app_color.dart';
import '../../../commons/constants/app_img.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 45),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 382,
                width: 325,
                decoration: BoxDecoration(
                  color: AppColors.grayImageBackground,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  AppImage.productDesImage,
                  fit: BoxFit.cover,
                  width: 316,
                  height: 372,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}