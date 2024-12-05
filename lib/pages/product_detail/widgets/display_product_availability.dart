import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum ProductAvailabilityStatus { inStock, outOfStock }

class DisplayProductAvailability extends StatelessWidget {
  final ProductAvailabilityStatus? status;
  final String availability;

  const DisplayProductAvailability(
      {super.key, this.status, required this.availability});

  @override
  Widget build(BuildContext context) {
    final availabilityText = _getAvailabilityText(status);
    final availabilityColor = _getAvailabilityColor(status);
    final localization = AppLocalizations.of(context)!;

    return Row(
      children: [
        Text(
          localization.availability,
          style: const TextStyle(
            color: AppColors.textMediumGrayColor,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
        Text(
          availabilityText ?? availability,
          style: TextStyle(
            color: availabilityColor ?? AppColors.textBlueColor,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  String? _getAvailabilityText(ProductAvailabilityStatus? status) {
    if (status == null) {
      return null;
    }
    switch (status) {
      case ProductAvailabilityStatus.inStock:
        return 'In Stock';
      case ProductAvailabilityStatus.outOfStock:
        return 'Out of Stock';
    }
  }

  Color? _getAvailabilityColor(ProductAvailabilityStatus? status) {
    if (status == null) {
      return null;
    }
    switch (status) {
      case ProductAvailabilityStatus.inStock:
        return AppColors.textBlueColor;
      case ProductAvailabilityStatus.outOfStock:
        return AppColors.textRedColor;
    }
  }
}
