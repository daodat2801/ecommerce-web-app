import 'package:flutter/material.dart';
import 'footer_column.dart';
import 'footer_subscribe.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 195),
      child: Column(
        children: [
          const Divider(
            color: Color(0xFFFAFAFA),
            thickness: 1,
          ),
          const SizedBox(height: 20),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FooterColumn(
                title: "Company Info",
                items: ["About Us", "Carrier", "We are hiring", "Blog"],
              ),
              FooterColumn(
                title: "Legal",
                items: [
                  "Privacy Policy",
                  "Terms of Service",
                  "Disclaimer",
                  "Cookie Policy"
                ],
              ),
              FooterColumn(
                title: "Features",
                items: [
                  "Business Marketing",
                  "User Analytics",
                  "Live Chat",
                  "Unlimited Support"
                ],
              ),
              FooterColumn(
                title: "Resources",
                items: ["iOS & Android", "Watch a Demo", "Customers", "API"],
              ),
              FooterSubscribe(),
            ],
          ),
          const SizedBox(height: 30),
          Divider(color: Colors.grey[400], thickness: 1),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Made With Love By Finland All Rights Reserved",
                style: TextStyle(
                  color: Color(0xFF737373),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
