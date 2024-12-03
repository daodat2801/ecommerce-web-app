import 'package:flutter/material.dart';
import 'footer_column.dart';
import 'footer_subscribe.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 195),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Bandage",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xFF252B42),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/facebook.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/instagram.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/twitter.png",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: const Color(0xFFFFFFFF),
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 195),
          child: const Column(
            children: [
              Divider(
                color: Color(0xFFE6E6E6),
                thickness: 1,
              ),
              SizedBox(height: 50),
              Row(
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
                    items: [
                      "iOS & Android",
                      "Watch a Demo",
                      "Customers",
                      "API"
                    ],
                  ),
                  FooterSubscribe(),
                ],
              ),
              SizedBox(height: 52),
            ],
          ),
        ),
        Container(
          color: const Color(0xFFFAFAFA),
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 195),
          child: const Row(
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
        )
      ],
    );
  }
}
