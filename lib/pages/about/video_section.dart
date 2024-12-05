import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:ecommerce_web_app/services/about_us_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VideoSection extends ConsumerWidget {
  const VideoSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final videoSectionAsync = ref.watch(videoProvider);

    return videoSectionAsync.when(
      data: (video) {
        return Container(
          color: AppColors.white,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 226),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              AppImage.video,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) =>
          const Center(child: Text('Something went wrong')),
    );
  }
}
