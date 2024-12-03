import 'package:flutter/material.dart';

class HeaderMenuItem extends StatelessWidget {
  final String title;
  const HeaderMenuItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GestureDetector(
        onTap: () {},
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF737373),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
