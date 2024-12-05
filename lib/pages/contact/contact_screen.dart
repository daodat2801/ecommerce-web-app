import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/widgets/footer.dart';
import 'package:ecommerce_web_app/commons/widgets/header.dart';
import 'package:ecommerce_web_app/pages/contact/contact_screen/contact_section.dart';
import 'package:ecommerce_web_app/pages/contact/contact_screen/suport_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ContactScreen extends ConsumerWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = AppLocalizations.of(context)!;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(isExpanded: false),
            const ContactSection(),
            Container(
              width: double.infinity,
              color: AppColors.white,
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Text(
                    localization.contact_tittle_visit,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimaryColor),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    localization.contact_we_help,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimaryColor),
                  ),
                  const SizedBox(height: 40),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SupportItem(isDark: false, icon: AppSvgs.icPhoneBlue),
                      SupportItem(isDark: true, icon: AppSvgs.icLocationBlue),
                      SupportItem(isDark: false, icon: AppSvgs.icMailBlue),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: AppColors.white,
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  SvgPicture.asset(AppSvgs.icArrowBlue, width: 72),
                  const SizedBox(height: 15),
                   Text(
                      localization.contact_we_wait_meet,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimaryColor),
                  ),
                  const SizedBox(height: 10),
                   Text(
                    localization.contact_let,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 58,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimaryColor),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child:
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Text(
                          localization.freetrial_button,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.white),
                        ),
                      )),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
