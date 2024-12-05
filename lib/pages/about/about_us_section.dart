import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:ecommerce_web_app/services/about_us_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AboutUsSection extends ConsumerWidget {
  const AboutUsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final aboutUsAsync = ref.watch(aboutUsProvider);

    return aboutUsAsync.when(
      data: (aboutUs) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 195, vertical: 40),
          color: AppColors.white,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'ABOUT COMPANY',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.textPrimaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 35),
                    Text(
                      aboutUs.title,
                      style: const TextStyle(
                        fontSize: 58,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 35),
                    const Text(
                      "We know how large objects will act, \nbut things on a small scale",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textMediumGrayColor,
                      ),
                    ),
                    const SizedBox(height: 35),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        aboutUs.button,
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppColors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Image.asset(
                  AppImage.about,
                  fit: BoxFit.contain,
                  height: 612,
                  width: 632,
                ),
              ),
            ],
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) =>
          const Center(child: Text('Something went wrong')),
    );
  }
}
