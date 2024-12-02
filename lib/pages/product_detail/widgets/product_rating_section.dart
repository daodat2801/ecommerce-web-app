import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class ProductRatingSection extends StatelessWidget {
  final double ratingValue;
  final int numberOfReviews;

  const ProductRatingSection(
      {super.key, required this.ratingValue, required this.numberOfReviews});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RatingStars(
            value: ratingValue,
            starCount: 5,
            starBuilder: (index, color) {
              if (index + 1 <= ratingValue) {
                return const Icon(
                  Icons.star,
                  color: AppColors.yellowStarColor,
                  size: 25,
                );
              } else if (index < ratingValue && index + 1 > ratingValue) {
                return const Icon(
                  Icons.star_half,
                  color: AppColors.yellowStarColor,
                  size: 25,
                );
              } else {
                return const Icon(
                  Icons.star_border,
                  color: AppColors.yellowStarColor,
                  size: 25,
                );
              }
            },
            starSize: 25,
            starSpacing: 2,
            maxValue: 5,
            starColor: AppColors.yellowStarColor,
            starOffColor: Colors.transparent,
            valueLabelVisibility: false,
            maxValueVisibility: false,
          ),
          const SizedBox(width: 10),
          numberOfReviews <= 1
              ? Text(
                  '$numberOfReviews Review',
                  style: const TextStyle(
                      color: AppColors.textMediumGrayColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )
              : Text(
                  '$numberOfReviews Reviews',
                  style: const TextStyle(
                      color: AppColors.textMediumGrayColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )
        ],
      ),
    );
  }
}
