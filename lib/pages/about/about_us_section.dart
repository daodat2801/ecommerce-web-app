import 'package:flutter/material.dart';

class AboutUsSection extends StatelessWidget {
  const AboutUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 195, vertical: 40),
      color: const Color(0xFFFFFFFF),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "ABOUT COMPANY",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF252B42),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 10),
                const Text(
                  "ABOUT US",
                  style: TextStyle(
                    fontSize: 58,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF252B42),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "We know how large objects will act,\n but things on a small scale",
                  // #737373
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF737373),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Get Quote Now",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Image.asset(
              "assets/images/about_title.png",
              fit: BoxFit.contain,
              height: 612,
              width: 632,
            ),
          ),
        ],
      ),
    );
  }
}
