import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../commons/constants/app_color.dart';

class BestSellerProductItem extends StatelessWidget {

  final String imagePath;

  const BestSellerProductItem({super.key, required this.imagePath});

  String _formatMoneyText(double amount) {
    final formatter = NumberFormat.currency(
        locale: 'en_US', symbol: '\$', decimalDigits: 2);
    return formatter.format(amount);
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 442,
      width: double.infinity,
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 280,
              fit: BoxFit.cover,
            ),
            Container(
              height: 162,
              width: double.infinity,
              color: AppColors.whiteBackgroundColor,
              padding: const EdgeInsets.all(25),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Graphic Design',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'English Department',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textMediumGrayColor,
                      ),
                    ),
                    const SizedBox(height: 15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text(
                            _formatMoneyText(16.48),
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: AppColors.textLightGray
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            _formatMoneyText(6.48),
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: AppColors.textColorGreen,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
