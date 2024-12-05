import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/widgets/footer.dart';
import 'package:ecommerce_web_app/commons/widgets/header.dart';
import 'package:ecommerce_web_app/commons/widgets/widget_grid_loading.dart';
import 'package:ecommerce_web_app/commons/widgets/widget_grid_product.dart';
import 'package:ecommerce_web_app/pages/home/widgets/background_card.dart';
import 'package:ecommerce_web_app/pages/home/widgets/category_session.dart';
import 'package:ecommerce_web_app/pages/home/widgets/feature_posts_section.dart';
import 'package:ecommerce_web_app/pages/home/widgets/promote_product_section.dart';
import 'package:ecommerce_web_app/pages/home/widgets/promote_product_sliders_section.dart';
import 'package:ecommerce_web_app/services/view_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shopState = ref.watch(ViewModelProvider.shopScreenVMProvider);

    ref.read(ViewModelProvider.shopScreenVMProvider.notifier).fetchProducts();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(isExpanded: true),
            const BackgroundCard(),
            const CategorySession(),
            const Text("Featured Products",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textSecondaryColor3)),
            const SizedBox(height: 15),
            const Text("BESTSELLER PRODUCTS",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimaryColor)),
            const SizedBox(height: 15),
            const Text("Problems trying to resolve the conflict between ",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textSecondaryColor3)),
            (shopState.products.isEmpty)
                ? const LoadingGrid()
                : ProductGrid(products: shopState.products),
            const PromoteProductSlidersSection(),
            const PromoteProductSection(),
            const FeaturePostsSection(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
