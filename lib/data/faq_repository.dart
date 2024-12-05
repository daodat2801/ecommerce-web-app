import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:ecommerce_web_app/models/faq.dart';

class FaqRepository {
  Future<List<FAQ>> fetchFaqs() async {
    try {
      final response = await rootBundle.loadString('assets/data/pricing.json');
      final Map<String, dynamic> data = json.decode(response);
      final sections = data['page']['sections'] as List<dynamic>? ?? [];
      final mainSection = sections.firstWhere(
        (section) => section['type']?.toString().trim() == 'main',
        orElse: () => null,
      ) as Map<String, dynamic>?;
      final faqSection = mainSection?['elements']?.firstWhere(
        (section) => section['type']?.toString().trim() == 'faq',
        orElse: () => null,
      ) as Map<String, dynamic>?;
      if (faqSection == null) {
        throw Exception("FAQ section not found in JSON.");
      }
      final faqsData = faqSection['questions'] ?? [];
      return (faqsData as List<dynamic>)
          .map((faq) => FAQ.fromJson(faq))
          .toList();
    } catch (e) {
      return [];
    }
  }
}
