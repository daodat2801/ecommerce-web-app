import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PricingFreetrialWidget extends StatelessWidget {
  //key
  const PricingFreetrialWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 582,
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.freetrial_title,
              style: const TextStyle(
                fontSize: 40,
                height: 50 / 40,
                fontWeight: FontWeight.w700,
                color: AppColors.productColorBlack,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 411,
              height: 40,
              child: Text(
                AppLocalizations.of(context)!.freetrial_description,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  height: 20 / 14,
                  letterSpacing: 0.2,
                  color: AppColors.textSecondaryColor3,
                ),
              ),
            ),
            const SizedBox(height: 24),
            InkWell(
              onTap: () {},
              child: Container(
                width: 327,
                height: 56,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(35, 166, 240, 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 40), // Added padding
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.freetrial_button,
                      style: const TextStyle(
                        fontSize: 14,
                        height: 22 / 14,
                        letterSpacing: 0.2,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppSvgs.icTwBlue, width: 30, height: 30),
                const SizedBox(width: 34),
                SvgPicture.asset(AppSvgs.icFbTrial, width: 30, height: 30),
                const SizedBox(width: 34),
                SvgPicture.asset(AppSvgs.icIgTrial, width: 30, height: 30),
                const SizedBox(width: 34),
                SvgPicture.asset(AppSvgs.icLknTrial, width: 30, height: 30),
              ],
            )
          ],
        ),
      ),
    );
  }
}
