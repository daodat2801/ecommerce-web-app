import 'package:ecommerce_web_app/data/about_us_repository.dart';
import 'package:ecommerce_web_app/data/faq_repository.dart';
import 'package:ecommerce_web_app/data/plan_respository.dart';
import 'package:ecommerce_web_app/data/product_repository.dart';
import 'package:ecommerce_web_app/data/team_member_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/product_detail_repository.dart';

class RepositoryProvider {
  RepositoryProvider._();
  static final productDetailRepositoryProvider =
      Provider<ProductDetailRepository>((ref) {
    return ProductDetailRepository();
  });
  static final aboutUsRepositoryProvider = Provider<AboutUsRepository>((ref) {
    return AboutUsRepository();
  });
  static final faqRepositoryProvider = Provider<FaqRepository>((ref) {
    return FaqRepository();
  });
  static final planRepositoryProvider = Provider<PlanRespository>((ref) {
    return PlanRespository();
  });
  static final teamMemberRepositoryProvider =
      Provider<TeamMemberRepository>((ref) {
    return TeamMemberRepository();
  });
  static final productRepositoryProvider = Provider<ProductRepository>((ref) {
    return ProductRepository();
  });
}
