import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:ecommerce_web_app/commons/widgets/common_blue_button.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/circle_icon_button.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/display_product_availability.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/display_product_price.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/product_rating_section.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/select_color_section.dart';
import 'package:flutter/material.dart';
import '../../../commons/constants/app_color.dart';

class DisplayProductInfo extends StatelessWidget {
  const DisplayProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.grayBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Floating Phone',
            style: TextStyle(
              color: AppColors.textPrimaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 12),
          const ProductRatingSection(
            ratingValue: 4,
            numberOfReviews: 10,
          ),
          const SizedBox(height: 20),
          const DisplayProductPrice(productPrice: 1139.33),
          const SizedBox(height: 10),
          const DisplayProductAvailability(status: ProductAvailabilityStatus.inStock),
          const SizedBox(height: 32),
          const Text(
              'Met minim Mollie non desert Alamo est sit cliquey dolor do '
                  'met sent. RELIT official consequent door ENIM RELIT'
                  ' Mollie.Excitation venial consequent sent nostrum met.',
            style: TextStyle(
              color: AppColors.textSecondaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w400
            ),
          ),
          const SizedBox(height: 27),
          const Divider(
            color: AppColors.dividerGrayColor,
            height: 1,
          ),
          const SizedBox(height: 29),
          const SelectColorSection(listProductColor: [
            AppColors.primaryBlue,
            AppColors.productColorGreen,
            AppColors.productColorOrange,
            AppColors.productColorBlack,
          ]),
          const Spacer(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CommonBlueButton(onPress: () {}, buttonLabel: 'Select Options'),
                const SizedBox(width: 10),
                const CircleIconButton(iconPath: AppSvgs.iconHeart),
                const SizedBox(width: 10),
                const CircleIconButton(iconPath: AppSvgs.iconCart),
                const SizedBox(width: 10),
                const CircleIconButton(iconPath: AppSvgs.iconEye),
                const SizedBox(width: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
