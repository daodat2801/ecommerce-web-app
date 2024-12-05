import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/widgets/footer.dart';
import 'package:ecommerce_web_app/commons/widgets/header.dart';
import 'package:ecommerce_web_app/pages/contact/contact_screen/contact_section.dart';
import 'package:ecommerce_web_app/pages/contact/contact_screen/suport_item.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen/widget_category_list.dart';
import 'package:ecommerce_web_app/commons/widgets/widget_grid_product.dart';
import 'package:ecommerce_web_app/pages/shop/shop_screen/widget_page_button.dart';
import 'package:ecommerce_web_app/services/view_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactScreen extends ConsumerWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              child: const Column(
                children: [
                  Text(
                    "VISIT OUR OFFICE",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimaryColor),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "We help small businesses\nwith big ideas",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimaryColor),
                  ),
                  SizedBox(height: 40),
                  Row(
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
                  const Text(
                    "WE Can't WAIT TO MEET YOU",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimaryColor),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Let’s Talk",
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Text(
                          "Try it free now",
                          style: TextStyle(
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
