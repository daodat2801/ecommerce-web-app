import 'package:ecommerce_web_app/commons/widgets/footer.dart';
import 'package:ecommerce_web_app/commons/widgets/freetrial_widget.dart';
import 'package:ecommerce_web_app/commons/widgets/header.dart';
import 'package:ecommerce_web_app/pages/pricing/widgets/banner_widget.dart';
import 'package:ecommerce_web_app/pages/pricing/widgets/brands_widget.dart';
import 'package:ecommerce_web_app/pages/pricing/widgets/item_type_widget.dart';
import 'package:ecommerce_web_app/pages/pricing/widgets/pricing_faqs.dart';
import 'package:ecommerce_web_app/pages/pricing/widgets/pricing_opttion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PricingScreen extends ConsumerWidget {
  //key
  const PricingScreen({super.key});
  @override
  Widget build(BuildContext context,WidgetRef ref) {
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
            Container(
              width: double.infinity,
              height: 1100,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PricingOpttionWidget(),
                  SizedBox(height: 48),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ItemTypeWidget(
                          name: "Free",
                          price: "19.99",
                          currency: "\$",
                          period: "Per Month",
                          features: [
                            "Unlimited product updates",
                            "Unlimited integrations",
                            "1GB Cloud storage",
                            "Email and community support"
                          ],
                          cta: "Try for free",
                          isFree: true),
                      ItemTypeWidget(
                        name: "Standard",
                        price: "19.99",
                        currency: "\$",
                        period: "Per Month",
                        features: [
                          "Unlimited product updates",
                          "Unlimited integrations",
                          "1GB Cloud storage",
                          "Email and community support"
                        ],
                        cta: "Try for free",
                        isChoice: true,
                      ),
                      ItemTypeWidget(
                        name: "Premium",
                        price: "19.99",
                        currency: "\$",
                        period: "Per Month",
                        features: [
                          "Unlimited product updates",
                          "Unlimited integrations",
                          "1GB Cloud storage",
                          "Email and community support"
                        ],
                        cta: "Try for free",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const BrandsWidget(),
            //PricingOpttionWidget(),
            const PricingFaqs(
                title: "Pricing FAQs",
                description:
                    "Problems trying to resolve the conflict between the two major realms of Classical physics",
                questions: [
                  {
                    "question": "The quick fox jumps over the lazy dog",
                    "answer":
                        "Met minim Mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amen"
                  },
                  {
                    "question": "The quick fox jumps over the lazy dog",
                    "answer":
                        "Met minim Mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ame"
                  },
                  {
                    "question": "The quick fox jumps over the lazy dog",
                    "answer":
                        "Met minim Mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ame"
                  },
                  {
                    "question": "The quick fox jumps over the lazy dog",
                    "answer":
                        "Met minim Mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ame"
                  },
                  {
                    "question": "The quick fox jumps over the lazy dog",
                    "answer":
                        "Met minim Mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ame"
                  },
                  {
                    "question": "The quick fox jumps over the lazy dog",
                    "answer":
                        "Met minim Mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud ame"
                  },
                ]),
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
