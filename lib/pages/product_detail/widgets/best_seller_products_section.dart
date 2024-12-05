import 'package:ecommerce_web_app/models/fetch_data_state.dart';
import 'package:ecommerce_web_app/services/view_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../commons/constants/app_color.dart';
import '../../../models/product_detail_model.dart';
import 'best_seller_product_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BestSellerProductsSection extends ConsumerWidget {
  const BestSellerProductsSection({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final viewModel =
    ref.watch(ViewModelProvider.productDetailViewModelProvider);
    final fetchBestSellerState = viewModel.fetchBestSellerProducts;
    final localization = AppLocalizations.of(context)!;

    if (fetchBestSellerState is Loading) {
      return _buildLoading();
    } else if (fetchBestSellerState is Failure) {
      return _buildFailure(
          (fetchBestSellerState as Failure).error, context, localization);
    } else if (fetchBestSellerState is Success) {
      return _buildBestSellerProductList(
          (fetchBestSellerState as Success).data, localization);
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildLoading() {
    return Container(
      color: AppColors.grayBackgroundColor,
      child: const Center(
        child: CircularProgressIndicator(
          color: AppColors.primaryBlue, // Set the color for the loader
        ),
      ),
    );
  }

  Widget _buildFailure(String errorMessage, BuildContext context,
      AppLocalizations localization) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (ScaffoldMessenger.maybeOf(context) != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                '${localization.product_detail_fail_to_fetch_product_detail} '
                    '$errorMessage'),
            backgroundColor: Colors.red,
          ),
        );
      }
    });

    return const SizedBox.shrink();
  }

  Widget _buildBestSellerProductList(List<BestSellerProduct> bestSellerProducts,
      AppLocalizations localization) {
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
              Text(
                localization.best_seller_product,
                style: const TextStyle(
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
