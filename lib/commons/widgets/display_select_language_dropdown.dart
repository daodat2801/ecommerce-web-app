import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/view_model_provider.dart';
import '../constants/app_color.dart';

class DisplaySelectLanguageDropdown extends ConsumerWidget {
  const DisplaySelectLanguageDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLanguage =
        ref.watch(ViewModelProvider.headerVMProvider).selectedLanguage;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryBlue,
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedLanguage,
          items: const [
            DropdownMenuItem(value: 'en', child: Text('English')),
            DropdownMenuItem(value: 'ko', child: Text('한국어')),
            DropdownMenuItem(value: 'ja', child: Text('日本語')),
          ],
          dropdownColor: AppColors.primaryBlue,
          icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          onChanged: (value) {
            if (value != null) {
              ref
                  .read(ViewModelProvider.headerVMProvider.notifier)
                  .updateSelectedLanguage(value);
            }
          },
        ),
      ),
    );
  }
}
