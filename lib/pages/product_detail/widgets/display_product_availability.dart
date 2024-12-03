import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';

enum ProductAvailabilityStatus { inStock, outOfStock }

class DisplayProductAvailability extends StatelessWidget {
  final ProductAvailabilityStatus status;

  const DisplayProductAvailability({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final availabilityText = _getAvailabilityText(status);
    final availabilityColor = _getAvailabilityColor(status);

    return Row(
      children: [
        const Text(
          'Availability : ',
          style: TextStyle(
            color: AppColors.textMediumGrayColor,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
        Text(
          availabilityText,
          style: TextStyle(
            color: availabilityColor,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  String _getAvailabilityText(ProductAvailabilityStatus status) {
    switch (status) {
      case ProductAvailabilityStatus.inStock:
        return 'In Stock';
      case ProductAvailabilityStatus.outOfStock:
        return 'Out of Stock';
    }
  }

  Color _getAvailabilityColor(ProductAvailabilityStatus status) {
    switch (status) {
      case ProductAvailabilityStatus.inStock:
        return AppColors.textBlueColor;
      case ProductAvailabilityStatus.outOfStock:
        return AppColors.textRedColor;
    }
  }
}
