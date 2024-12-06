import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class ItemTypeWidget extends StatefulWidget {
  final String name;
  final String price;
  final String currency;
  final String period;
  final List<String> features;
  final String cta;
  final bool? isChoice;
  final bool? isFree;
  static List<String> defaultFeatures = [
    "Unlimited product updates",
    "Unlimited integrations",
    "1GB Cloud storage",
    "Email and community support",
    "Many Thing"
  ];

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
  _ItemTypeWidgetState createState() => _ItemTypeWidgetState();
}

class _ItemTypeWidgetState extends State<ItemTypeWidget>
    with SingleTickerProviderStateMixin {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: widget.isChoice == false ? 664 : 700,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
      decoration: BoxDecoration(
        color: widget.isChoice == false
            ? Colors.white
            : AppColors.productColorBlack,
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
            widget.name,
            style: TextStyle(
              color: widget.isChoice == false
                  ? AppColors.productColorBlack
                  : Colors.white,
              fontSize: 24,
              height: 32 / 24,
              letterSpacing: 0.1,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 35),
          Text(
            'Organize across all\n apps by hand',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                height: 24 / 14,
                letterSpacing: 0.1,
                color: widget.isChoice == false
                    ? AppColors.textMediumGrayColor
                    : Colors.white),
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.price,
                style: const TextStyle(
                  color: AppColors.primaryBlue,
                  fontSize: 40,
                  height: 50 / 40,
                  letterSpacing: 0.2,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.currency,
                    style: const TextStyle(
                      color: AppColors.primaryBlue,
                      fontSize: 24,
                      height: 32 / 24,
                      letterSpacing: 0.1,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    widget.period,
                    style: const TextStyle(
                        fontSize: 14,
                        height: 22 / 16,
                        letterSpacing: 0.1,
                        color: AppColors.primaryBlue),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 16),
          const SizedBox(height: 16),
          ...ItemTypeWidget.defaultFeatures.map((defaultFeature) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: widget.features.contains(defaultFeature)
                          ? Colors.green
                          : AppColors.textSecondaryColor2,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        defaultFeature,
                        style: TextStyle(
                          color: widget.isChoice == false
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
          MouseRegion(
            onEnter: (_) => setState(() => isHovered = true),
            onExit: (_) => setState(() => isHovered = false),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 246,
              height: 52,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              decoration: BoxDecoration(
                color: isHovered
                    ? AppColors.textSecondaryColor2.withOpacity(0.99)
                    : widget.isFree == true
                        ? AppColors.productColorBlack
                        : AppColors.primaryBlue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.freetrial_button,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    letterSpacing: 0.2,
                    fontWeight: FontWeight.bold,
                    height: 22 / 14,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
