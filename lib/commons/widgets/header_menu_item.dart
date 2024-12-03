import 'package:flutter/material.dart';

import '../constants/app_color.dart';

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
            color: AppColors.textSecondaryColor3,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
