import 'package:ecommerce_web_app/commons/widgets/widget_brand_list.dart';
import 'package:flutter/material.dart';

class PartnersSection extends StatelessWidget {
  const PartnersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: const Color(0xFFFAFAFA),
      child: const Column(
        children: [
          Text(
            "Big Companies Are Here",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              //#252B42
              color: Color(0xFF252B42),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Problems trying to resolve the conflict between \nthe two major realms of Classical physics: Newtonian mechanics ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF737373),
            ),
          ),
          SizedBox(height: 50),
          BrandList(),
        ],
      ),
    );
  }
}
