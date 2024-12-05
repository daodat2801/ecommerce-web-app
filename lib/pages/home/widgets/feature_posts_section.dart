import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FeaturePostsSection extends StatelessWidget {
  const FeaturePostsSection({super.key});

  @override
  Widget build(BuildContext context) {
        final localization = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 195, vertical: 60),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            localization.home_feature_posts_title_1,
            style: const TextStyle(
              color: AppColors.primaryBlue,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            localization.home_feature_posts_title_2,
            style: const TextStyle(
              color: AppColors.textPrimaryColor,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            localization.home_feature_posts_desc,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.textMediumGrayColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 40),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _PostCard(
                imagePath: AppImage.post1,
                title: "Loudest à la Madison #1 \n(L'intégral)",
                description:
                    "We focus on ergonomics and meeting \nyou where you work. It's only a \nkeystroke away.",
                date: "22 April 2021",
                comments: "10 comments",
              ),
              _PostCard(
                imagePath: AppImage.post2,
                title: "Loudest à la Madison #1 \n(L'intégral)",
                description:
                    "We focus on ergonomics and meeting \nyou where you work. It's only a \nkeystroke away.",
                date: "22 April 2021",
                comments: "10 comments",
              ),
              _PostCard(
                imagePath: AppImage.post3,
                title: "Loudest à la Madison #1 \n(L'intégral)",
                description:
                    "We focus on ergonomics and meeting \nyou where you work. It's only a \nkeystroke away.",
                date: "22 April 2021",
                comments: "10 comments",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String date;
  final String comments;

  const _PostCard({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.date,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Card(
        color: Colors.white,
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  child: Image.asset(
                    imagePath,
                    height: 300,
                    width: 348,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: AppColors.textRedColor,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: const Text(
                      "NEW",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text(
                        "Google",
                        style: TextStyle(
                          color: AppColors.blueMiddle,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Trending",
                        style: TextStyle(
                          color: AppColors.textMediumGrayColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "New",
                        style: TextStyle(
                          color: AppColors.textMediumGrayColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.textPrimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: const TextStyle(
                      color: AppColors.textMediumGrayColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppSvgs.isDate,
                              height: 16, width: 16),
                          const SizedBox(width: 5),
                          Text(
                            date,
                            style: const TextStyle(
                              color: AppColors.textMediumGrayColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(AppSvgs.isComment,
                              height: 16, width: 16),
                          const SizedBox(width: 5),
                          Text(
                            comments,
                            style: const TextStyle(
                              color: AppColors.textMediumGrayColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Row(children: [
                    Text(
                      "Learn More",
                      style: TextStyle(
                        color: AppColors.textMediumGrayColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                      size: 14,
                    )
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
