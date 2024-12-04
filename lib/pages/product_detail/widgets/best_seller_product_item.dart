import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../commons/constants/app_color.dart';
import '../../../models/product_detail_model.dart';

class BestSellerProductItem extends StatelessWidget {
  final BestSellerProduct productItem;

  const BestSellerProductItem({super.key, required this.productItem});

  String _formatMoneyText(double amount) {
    final formatter =
        NumberFormat.currency(locale: 'en_US', symbol: '\$', decimalDigits: 2);
    return formatter.format(amount);
  }

  String _getImagePath(String? imageFileName) {
    if (imageFileName == null) {
      return 'assets/images/best_seller_product_1.png';
    }
    return 'assets/images/$imageFileName';
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
              _getImagePath(productItem.image),
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
                    Text(
                      productItem.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      productItem.department,
                      style: const TextStyle(
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
                            _formatMoneyText(productItem.originalPrice),
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: AppColors.textLightGray),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            _formatMoneyText(productItem.discountedPrice),
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

class HoverItem extends StatefulWidget {
  final BestSellerProduct productItem;

  const HoverItem({super.key, required this.productItem});

  @override
  _HoverItemState createState() => _HoverItemState();
}

class _HoverItemState extends State<HoverItem> {
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          scale = 1.05;
        });
      },
      onExit: (_) {
        setState(() {
          scale = 1.0;
        });
      },
      child: AnimatedScale(
        scale: scale,
        duration: const Duration(milliseconds: 200),
        child: BestSellerProductItem(productItem: widget.productItem),
      ),
    );
  }
}
