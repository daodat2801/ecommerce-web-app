import 'package:flutter/material.dart';

class CallToActionSection extends StatelessWidget {
  const CallToActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 636,
      color: const Color(0xFF2A7CC7),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(195),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "WORK WITH US",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  "Now Let's grow Yours",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  "The gradual accumulation of information about atomic and\nsmall-scale behavior during the first quarter of the 20th",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2A7CC7),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: Colors.white),
                    ),
                  ),
                  child: const Text("Button",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFFFFFF),
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
              "assets/images/work_with_us.png",
              fit: BoxFit.contain,
              alignment: Alignment.centerRight,
              height: 636,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
