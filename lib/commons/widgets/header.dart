import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/app_color.dart';
import 'header_menu_item.dart';

class Header extends StatelessWidget {
  final bool   isExpanded;

  const Header({super.key, this.isExpanded = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isExpanded) ...[
          Container(
            color: AppColors.primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 195, vertical: 20),
            child: Row(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AppSvgs.icPhone,height: 16,width: 16 ),
                    const SizedBox(width: 8),
                    const Text(
                      "(225) 555-0118",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 20),
                    SvgPicture.asset(AppSvgs.icMail,height: 16,width: 16 ),
                    const SizedBox(width: 8),
                    const Text(
                      "michelle.rivera@example.com",
                      style: TextStyle(
                        // #FFFFFF
                        color: AppColors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 40),
                    const Text(
                      "Follow Us  and get a chance to win 80% off",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    const Text(
                      "Follow Us  :",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(AppSvgs.icIg,height: 16,width: 16 ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(AppSvgs.icYtb,height: 16,width: 16 ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(AppSvgs.icFb,height: 16,width: 16 ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(AppSvgs.icTw,height: 16,width: 16 ),
                    const SizedBox(width: 10),
                    Image.asset(
                        "assets/icons/user_login.png",
                        width: 16,
                        height: 16,
                      ),
                    InkWell(
                      onTap: (){},
                      child: const Text(
                        "Login / Register",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 195, vertical: 20),
          color: AppColors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Bandage",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: AppColors.textPrimaryColor,
                ),
              ),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HeaderMenuItem(title: "Home"),
                      HeaderMenuItem(title: "Shop"),
                      HeaderMenuItem(title: "About"),
                      HeaderMenuItem(title: "Blog"),
                      HeaderMenuItem(title: "Contact"),
                      HeaderMenuItem(title: "Pages"),
                    ],
                  ),
                ),
              if (isExpanded) ...[
                Row(
                  children: [
                    SvgPicture.asset(AppSvgs.icSearch,height: 16,width: 16 ),
                    const SizedBox(width: 15),
                    SvgPicture.asset(AppSvgs.icCart,height: 16,width: 16 ),
                    const SizedBox(width: 5),
                    const Text(
                      "1",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 15),
                    SvgPicture.asset(AppSvgs.icHeart,height: 16,width: 16 ),
                    const SizedBox(width: 5),
                    const Text(
                      "1",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ] else ...[
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 25),
                      ),
                      child: const Row(
                        children: [
                          Text(
                            "Become a member",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 15),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]
            ],
          ),
        ),
      ],
    );
  }
}
