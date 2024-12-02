import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final String? name;
  final String? department;
  final String? originalPrice;
  final String? discountedPrice;
  final String? image;

  const ProductItem(
      {super.key,
      required this.name,
      required this.department,
      required this.originalPrice,
      required this.discountedPrice,
      required this.image});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "${AppImage.pathProduct}/${widget.image}",
          width: 200,
          fit: BoxFit.scaleDown,
        ),
        const SizedBox(height: 14),
        Text(
          widget.name ?? "Graphic Design",
          style: const TextStyle(
              fontSize: 16,
              color: AppColors.textPrimaryColor,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 5),
        Text(
          widget.department ?? "English Department",
          style: const TextStyle(
              fontSize: 14,
              color: AppColors.textSecondaryColor3,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "\$${widget.originalPrice ?? "16.48"}",
              style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.textSecondaryColor2,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(width: 5),
            Text(
              "\$${widget.discountedPrice ?? "6.48"}",
              style: const TextStyle(
                  fontSize: 16, color: AppColors.textNumber, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildCircle(color: AppColors.primaryColor),
              _buildCircle(color: AppColors.textNumber),
              _buildCircle(color: AppColors.colorCircle),
              _buildCircle(color: AppColors.textNumber),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildCircle({required Color color}) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
