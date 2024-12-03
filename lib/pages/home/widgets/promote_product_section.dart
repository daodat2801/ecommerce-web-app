import 'package:flutter/material.dart';

class PromoteProductSection extends StatelessWidget {
  const PromoteProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      padding: const EdgeInsets.symmetric(vertical: 112, horizontal: 132),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/work_with_us.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 100),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "SUMMER 2020",
                  style: TextStyle(
                    color: Color(0xFFBDBDBD),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Part of the Neural\nUniverse",
                  style: TextStyle(
                    color: Color(0xFF252B42),
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "We know how large objects will act, \nbut things on a small scale.",
                  style: TextStyle(
                    color: Color(0xFF737373),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF23A6F0),
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 45,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Text(
                        "BUY NOW",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xFF2DC071),
                          width: 1,
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 45,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "READ MORE",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF2DC071),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
