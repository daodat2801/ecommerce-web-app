import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/display_list_product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductImagePreview extends StatefulWidget {
  const ProductImagePreview({super.key});

  @override
  State<ProductImagePreview> createState() => _ProductImagePreviewState();
}

class _ProductImagePreviewState extends State<ProductImagePreview> {
  int currentIndex = 0;

  void _setCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      AppImage.productDetailImage,
      AppImage.productDetailImageChair,
      AppImage.productDetailImage,
      AppImage.productDetailImageChair,
      AppImage.productDetailImage,
      AppImage.productDetailImageChair,
      AppImage.productDetailImage,
    ];

    return Scaffold(
      backgroundColor: AppColors.grayBackgroundColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: FractionallySizedBox(
              heightFactor: 0.82,
              widthFactor: 1.0,
              child: Image.asset(
                imageUrls[currentIndex],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
                heightFactor: 0.14,
                widthFactor: 1.0,
                child: DisplayListProductImage(
                  imageUrls: imageUrls,
                  selectedIndex: currentIndex,
                  onItemClick: (index) {
                    _setCurrentIndex(index);
                  },
                )),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () {
                _setCurrentIndex(
                    (currentIndex - 1 + imageUrls.length) % imageUrls.length);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: SvgPicture.asset(
                  AppSvgs.arrowLeft,
                  width: 24,
                  height: 45,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                _setCurrentIndex(
                    (currentIndex + 1 + imageUrls.length) % imageUrls.length);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: SvgPicture.asset(
                  AppSvgs.arrowRight,
                  width: 24,
                  height: 45,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
