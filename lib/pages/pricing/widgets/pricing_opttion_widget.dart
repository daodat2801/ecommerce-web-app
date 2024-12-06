import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/services/view_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PricingOpttionWidget extends StatelessWidget {
  //key
  const PricingOpttionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(
          localization.header_navigation_pricing,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          localization.main_pricing_description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.textSecondaryColor3,
          ),
        ),
        const SizedBox(height: 24),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    localization.main_pricing_billing_monthly,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 24 / 16,
                      letterSpacing: 0.1,
                      color: AppColors.productColorBlack,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const PricingSwitch(),
                  const SizedBox(width: 8),
                  Text(
                    localization.main_pricing_billing_yearly,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 24 / 16,
                      letterSpacing: 0.1,
                      color: AppColors.productColorBlack,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Container(
                height: 44,
                width: 109,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(37),
                  border: Border.all(color: AppColors.textBlueColor, width: 1),
                ),
                child: Text(
                  localization.main_pricing_billing_yearly_discount,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.primaryBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class PricingSwitch extends ConsumerWidget {
  const PricingSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isYearly = ref.watch(ViewModelProvider.pricingScreenVMProvider
        .select((state) => state.isPricingToggled));
    return InkWell(
      onTap: () {
        ref
            .read(ViewModelProvider.pricingScreenVMProvider.notifier)
            .togglePricing();
      },
      child: Container(
        width: 45,
        height: 27,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            width: 1,
            color: AppColors.primaryBlue,
          ),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: isYearly ? 19 : 4,
              top: 3,
              child: Container(
                width: 19,
                height: 19,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.circleButtonColor,
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: AppColors.borderSwitchColor,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
