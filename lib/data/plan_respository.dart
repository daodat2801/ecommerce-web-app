import 'dart:convert';

import 'package:ecommerce_web_app/models/plan.dart';
import 'package:flutter/services.dart';

class PlanRespository {
  Future<List<Plan>> fetchPlans() async {  try {
  final response = await rootBundle.loadString('assets/data/pricing.json');
  final Map<String, dynamic> data = json.decode(response);
  final sections = data['page']['sections'] as List<dynamic>? ?? [];
  final mainSection = sections.firstWhere(
    (section) => section['type']?.toString().trim() == 'main',
    orElse: () => null,
  ) as Map<String, dynamic>?;
  final planSection = mainSection?['elements']?.firstWhere(
    (section) => section['type']?.toString().trim() == 'pricing',
    orElse: () => null,
  ) as Map<String, dynamic>?;
  final plansData = planSection?['plans'] ?? [];
  return (plansData as List<dynamic>)
      .map((plan) => Plan.fromJson(plan))
      .toList();
} catch (e) {
  print("Error fetching plans: $e");
  return [];
}
  }
}