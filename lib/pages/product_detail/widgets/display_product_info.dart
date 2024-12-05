import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:ecommerce_web_app/models/fetch_data_state.dart';
import 'package:ecommerce_web_app/pages/product_detail/provider/product_detail_view_model_provider.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/display_product_availability.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/display_product_price.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/product_rating_section.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/select_color_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../commons/constants/app_color.dart';
import '../../../models/product_detail_model.dart';
import 'hover_button.dart';
import 'hover_icon_button.dart';

class DisplayProductInfo extends ConsumerWidget {
  const DisplayProductInfo({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final viewModel = ref.watch(productDetailViewModelProvider);
    final fetchProductDetailState = viewModel.fetchProductDetail;

    return Container(
      color: AppColors.grayBackgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      width: double.infinity,
      child: fetchProductDetailState is Loading
          ? _buildLoading()
          : fetchProductDetailState is Failure
              ? _buildFailure(
                  (fetchProductDetailState as Failure).error, context)
              : fetchProductDetailState is Success
                  ? _buildProductDetails(
                      (fetchProductDetailState as Success).data)
                  : const SizedBox.shrink(), // Default if no state matches
    );
  }

  Widget _buildLoading() {
    return Container(
      color: AppColors.grayBackgroundColor,
    );
  }

  Widget _buildFailure(String errorMessage, BuildContext context) {
    Future.microtask(() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to fetch product details: $errorMessage'),
          backgroundColor: Colors.red,
        ),
      );
    });

    return const SizedBox.shrink();
  }

  Widget _buildProductDetails(ProductDetail data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.name,
          style: const TextStyle(
            color: AppColors.textPrimaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 12),
        ProductRatingSection(
          ratingValue: data.rating.toDouble(),
          numberOfReviews: data.reviewsCount,
        ),
        const SizedBox(height: 20),
        DisplayProductPrice(productPrice: data.price),
        const SizedBox(height: 10),
        DisplayProductAvailability(availability: data.availability),
        const SizedBox(height: 32),
        Text(
          data.description.content,
          style: const TextStyle(
            color: AppColors.textSecondaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 27),
        const Divider(
          color: AppColors.dividerGrayColor,
          height: 1,
        ),
        const SizedBox(height: 29),
        SelectColorSection(listProductColor: data.colors),
        const Spacer(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HoverButton(
                onPress: () {},
                buttonLabel: 'Select Options',
              ),
              const SizedBox(width: 10),
              const HoverIconButton(iconPath: AppSvgs.iconHeart),
              const SizedBox(width: 10),
              const HoverIconButton(iconPath: AppSvgs.iconCart),
              const SizedBox(width: 10),
              const HoverIconButton(iconPath: AppSvgs.iconEye),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ],
    );
  }
}
