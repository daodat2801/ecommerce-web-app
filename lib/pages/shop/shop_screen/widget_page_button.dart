import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';

class PageButton extends StatelessWidget {
  const PageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 74,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: AppColors.textSecondaryColor2,
          width: 1.35,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // First Button
          _buildPageButton('First', Colors.grey, Colors.transparent),
          const VerticalDivider(
            color: AppColors.textSecondaryColor2,
            thickness: 1.35,
          ),

          _buildPageButton('1', AppColors.primaryColor, Colors.transparent),
          _buildPageButton('2', Colors.white, AppColors.primaryColor, isSelected: true),
          _buildPageButton('3', AppColors.primaryColor, Colors.transparent),
          const VerticalDivider(
            color: AppColors.textSecondaryColor2,
            thickness: 1.35,
          ),
          _buildPageButton('Next', AppColors.primaryColor, Colors.transparent),
        ],
      ),
    );
  }
}

Widget _buildPageButton(String text, Color textColor, Color bgColor,
    {bool isSelected = false}) {
  return Container(
    height: 74,
    decoration: BoxDecoration(
      color: isSelected ? AppColors.primaryColor : bgColor,
    ),
    child: TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : textColor,
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
      ),
    ),
  );
}
