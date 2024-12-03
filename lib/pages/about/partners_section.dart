import 'package:flutter/material.dart';

class PartnersSection extends StatelessWidget {
  const PartnersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: const Color(0xFFFAFAFA),
      child: Column(
        children: [
          const Text(
            "Big Companies Are Here",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              //#252B42
              color: Color(0xFF252B42),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Problems trying to resolve the conflict between \nthe two major realms of Classical physics: Newtonian mechanics ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF737373),
            ),
          ),
          const SizedBox(height: 50),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 25,
            runSpacing: 100,
            children: [
              Image.asset("assets/icons/fa_brand_1.png", height: 100),
              Image.asset("assets/icons/fa_brand_2.png", height: 100),
              Image.asset("assets/icons/fa_brand_3.png", height: 100),
              Image.asset("assets/icons/fa_brand_4.png", height: 100),
              Image.asset("assets/icons/fa_brand_5.png", height: 100),
              Image.asset("assets/icons/fa_brand_6.png", height: 100),
            ],
          ),
        ],
      ),
    );
  }
}
