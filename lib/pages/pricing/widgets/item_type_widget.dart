import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';

class ItemTypeWidget extends StatelessWidget {
  final String name;
  final String price;
  final String currency;
  final String period;
  final List<String> features;
  final String cta;
  final bool? isChoice;
  final bool? isFree;

  const ItemTypeWidget({
    super.key,
    required this.name,
    required this.price,
    required this.currency,
    required this.period,
    required this.features,
    required this.cta,
    this.isChoice = false,
    this.isFree = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //
      },
      child: Container(
        width: 327,
        height: isChoice == false ? 664 : 700,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
        decoration: BoxDecoration(
          color: isChoice == false ? Colors.white : AppColors.productColorBlack,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.primaryBlue,
            width: 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(
                color: isChoice == false
                    ? AppColors.productColorBlack
                    : Colors.white,
                fontSize: 24,
                height: 32 / 24,
                letterSpacing: 0.1,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$price',
                  style: TextStyle(
                    color: isChoice == false
                        ? AppColors.productColorBlack
                        : Colors.white,
                    fontSize: 58,
                    height: 80 / 58,
                    letterSpacing: 0.2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currency,
                      style: TextStyle(
                        color: isChoice == false
                            ? AppColors.productColorBlack
                            : Colors.white,
                        fontSize: 24,
                        height: 32 / 24,
                        letterSpacing: 0.1,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      period,
                      style: TextStyle(
                        fontSize: 16,
                        height: 24 / 16,
                        letterSpacing: 0.1,
                        color: isChoice == false
                            ? AppColors.productColorBlack
                            : Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 16),
            ...features.map((feature) => Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          feature,
                          style: TextStyle(
                            color: isChoice == false
                                ? AppColors.productColorBlack
                                : Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            const SizedBox(height: 16),
            InkWell(
              onTap: () {},
              child: Container(
                width: 246,
                height: 52,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                decoration: BoxDecoration(
                  color: isFree == true
                      ? AppColors.productColorBlack
                      : AppColors.primaryBlue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  'Try for free',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 0.2,
                    fontWeight: FontWeight.bold,
                    height: 22 / 14,
                    fontSize: 14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
