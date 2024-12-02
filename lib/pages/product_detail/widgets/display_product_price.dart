import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../commons/constants/app_color.dart';

class DisplayProductPrice extends StatelessWidget {
  final double productPrice;

  const DisplayProductPrice({super.key, required this.productPrice});

  @override
  Widget build(BuildContext context) {
    final formattedPrice =
        NumberFormat.currency(locale: 'en_US', symbol: '\$', decimalDigits: 2)
            .format(productPrice);

    return Text(
      formattedPrice,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimaryColor,
      ),
    );
  }
}
