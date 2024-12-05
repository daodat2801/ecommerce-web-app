import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BannerTextWidget extends StatelessWidget {
  //key
  const BannerTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        height: 280,
        width: 900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              localization.team_what_we_do,
              style: const TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.1,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textSecondaryColor3,
                  height: 24 / 16),
            ),
            const SizedBox(height: 10),
            Expanded(
                child: Text(
              localization.team_innovation_tailored_for_you,
              style: const TextStyle(
                  color: AppColors.productColorBlack,
                  fontSize: 58,
                  fontWeight: FontWeight.w700,
                  height: 80 / 58,
                  letterSpacing: 0.2),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  localization.team_home,
                  style: const TextStyle(
                    color: AppColors.textSecondaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.2,
                    height: 24 / 4,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.dividerGrayColor,
                  size: 16,
                ),
                Text(
                  localization.team_team,
                  style: const TextStyle(
                    color: AppColors.textSecondaryColor3,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.2,
                    height: 24 / 4,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
