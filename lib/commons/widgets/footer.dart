import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/app_svg.dart';
import 'footer_column.dart';
import 'footer_subscribe.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: AppColors.white,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 195),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                 localization.footer_brand,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: AppColors.textPrimaryColor,
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(AppSvgs.icFbBlue,height: 16,width: 16 ),
                  const SizedBox(width: 20),
                  SvgPicture.asset(AppSvgs.icIgBlue,height: 16,width: 16 ),
                  const SizedBox(width: 20),
                  SvgPicture.asset(AppSvgs.icTwBlue,height: 16,width: 16 ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: AppColors.white,
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 195),
          child: Column(
            children: [
              const Divider(
                color: AppColors.divider,
                thickness: 1,
              ),
              const SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FooterColumn(
                    title: localization.footer_company_info_title,
                    items: [localization.footer_company_info_about_us, localization.footer_company_info_carrier, localization.footer_company_info_we_are_hiring, localization.footer_company_info_blog],
                  ),
                   FooterColumn(
                    title: localization.footer_legal_title,
                    items: [
                      localization.footer_legal_privacy_policy,
                      localization.footer_legal_terms_of_service,
                      localization.footer_legal_disclaimer,
                      localization.footer_legal_cookie_policy
                    ],
                  ),
                   FooterColumn(
                    title: localization.footer_features_title,
                    items: [
                      localization.footer_features_business_marketing,
                      localization.footer_features_user_analytics,
                      localization.footer_features_live_chat,
                      localization.footer_features_unlimited_support
                    ],
                  ),
                   FooterColumn(
                    title:localization.footer_resources_title,
                    items: [
                      localization.footer_resources_ios_android,
                      localization.footer_resources_watch_a_demo,
                      localization.footer_resources_customers,
                      localization.footer_resources_api
                    ],
                  ),
                  const FooterSubscribe(),
                ],
              ),
              const SizedBox(height: 52),
            ],
          ),
        ),
        Container(
          color: AppColors.secondaryBackgroundColor,
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 195),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                localization.footer_made_with_love,
                style: TextStyle(
                  color: AppColors.textSecondaryColor3,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
