import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:ecommerce_web_app/services/about_us_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CallToActionSection extends ConsumerWidget {
  const CallToActionSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final callToActionAsync = ref.watch(callToActionProvider);

    return callToActionAsync.when(
      data: (callToAction) {
        return Container(
          height: 636,
          color: AppColors.blue,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(195),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      callToAction.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      callToAction.subtitle,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "The gradual accumulation of information about atomic and \nsmall-scale behavior during the first quarter of the 20th ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.blue,
                        foregroundColor: AppColors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(color: AppColors.white),
                        ),
                      ),
                      child: Text(
                        callToAction.button,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Image.asset(
                  AppImage.workWithUs,
                  fit: BoxFit.contain,
                  alignment: Alignment.centerRight,
                  height: 636,
                  width: double.infinity,
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
