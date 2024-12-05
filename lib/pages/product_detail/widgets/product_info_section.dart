import 'package:flutter/material.dart';
import '../../../commons/constants/app_color.dart';
import 'display_product_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/product_image_preview.dart';
import 'package:ecommerce_web_app/services/view_model_provider.dart';
import 'package:ecommerce_web_app/models/fetch_data_state.dart';

class ProductInfoSection extends ConsumerWidget {
  const ProductInfoSection({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final viewModel =
        ref.watch(ViewModelProvider.productDetailViewModelProvider);
    final fetchProductDetailState = viewModel.fetchProductDetail;

    return Container(
      color: AppColors.grayBackgroundColor,
      width: double.infinity,
      child: Center(
        child: SizedBox(
          width: 1050,
          height: 598,
          child: fetchProductDetailState is Loading
              ? _buildLoading()
              : const Row(
                  children: [
                    Flexible(flex: 1, child: ProductImagePreview()),
                    SizedBox(width: 30),
                    Flexible(flex: 1, child: DisplayProductInfo()),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.primaryBlue, // Set the color for the loader
      ),
    );
  }
}
