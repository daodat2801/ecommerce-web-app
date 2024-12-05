import 'package:ecommerce_web_app/commons/widgets/footer.dart';
import 'package:ecommerce_web_app/commons/widgets/freetrial_widget.dart';
import 'package:ecommerce_web_app/commons/widgets/header.dart';
import 'package:ecommerce_web_app/pages/pricing/widgets/banner_widget.dart';
import 'package:ecommerce_web_app/pages/pricing/widgets/brands_widget.dart';
import 'package:ecommerce_web_app/pages/pricing/widgets/list_item_type_widget.dart';
import 'package:ecommerce_web_app/pages/pricing/widgets/pricing_faqs.dart';
import 'package:ecommerce_web_app/pages/pricing/widgets/pricing_opttion_widget.dart';
import 'package:ecommerce_web_app/services/view_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PricingScreen extends ConsumerWidget {
  //key
  const PricingScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final faqState = ref.watch(ViewModelProvider.pricingScreenVMProvider);
    ref.read(ViewModelProvider.pricingScreenVMProvider.notifier).fetchFaqs();
    return Scaffold(
      appBar: AppBar(
        title: const Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 13),
            const BannerWidget(),
            const SizedBox(
              width: double.infinity,
              height: 1100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PricingOpttionWidget(),
                  SizedBox(height: 48),
                  ListItemTypeWidget(),
                ],
              ),
            ),
            const BrandsWidget(),
            //PricingOpttionWidget(),
            PricingFaqs(
                title: "Pricing FAQs",
                description:
                    "Problems trying to resolve the conflict between the two major realms of Classical physics",
                questions: faqState.faqState.faqs.isEmpty
                    ? []
                    : faqState.faqState.faqs
                        .map((faq) =>
                            {"question": faq.question, "answer": faq.answer})
                        .toList()),
            const SizedBox(height: 24),
            const PricingFreetrialWidget(),
            const Footer(),
            //BrandsWidget(),
          ],
        ),
      ),
    );
  }
}
