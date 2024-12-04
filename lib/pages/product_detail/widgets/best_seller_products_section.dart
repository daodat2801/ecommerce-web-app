import 'package:ecommerce_web_app/models/fetch_data_state.dart';
import 'package:ecommerce_web_app/pages/product_detail/provider/product_detail_view_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../commons/constants/app_color.dart';
import '../../../models/product_detail_model.dart';
import 'best_seller_product_item.dart';

class BestSellerProductsSection extends ConsumerWidget {
  const BestSellerProductsSection({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final viewModel = ref.watch(productDetailViewModelProvider);
    final fetchBestSellerState = viewModel.fetchBestSellerProducts;

    if (fetchBestSellerState is Loading) {
      return _buildLoading();
    } else if (fetchBestSellerState is Failure) {
      return _buildFailure((fetchBestSellerState as Failure).error, context);
    } else if (fetchBestSellerState is Success) {
      return _buildBestSellerProductList(
          (fetchBestSellerState as Success).data);
    } else {
      return const SizedBox.shrink();
    }
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

  Widget _buildBestSellerProductList(List<BestSellerProduct> bestSellerProducts) {
    return Container(
      color: AppColors.grayBackgroundColor,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 42),
      child: Center(
        child: SizedBox(
          width: 1050,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'BESTSELLER PRODUCTS',
                style: TextStyle(
                  color: AppColors.textPrimaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 24),
              const Divider(
                color: AppColors.dividerLightGrayColor,
                height: 2,
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 908,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 442,
                    crossAxisCount: 4,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 24,
                    childAspectRatio: 1,
                  ),
                  itemCount: bestSellerProducts.length,
                  itemBuilder: (context, index) {
                    return HoverItem(productItem: bestSellerProducts[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
