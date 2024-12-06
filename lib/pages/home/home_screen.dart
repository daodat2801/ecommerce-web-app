import 'package:ecommerce_web_app/commons/widgets/footer.dart';
import 'package:ecommerce_web_app/commons/widgets/header.dart';
import 'package:ecommerce_web_app/pages/home/widgets/background_card.dart';
import 'package:ecommerce_web_app/pages/home/widgets/best_sell_product_session.dart';
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
    final homeState = ref.watch(ViewModelProvider.homeScreenVMProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(isExpanded: true),
            const BackgroundCard(),
            const CategorySession(),
            BestSellProductSession(products: homeState.products),
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