import 'package:ecommerce_web_app/data/faq_repository.dart';
import 'package:ecommerce_web_app/data/plan_respository.dart';
import 'package:ecommerce_web_app/pages/pricing/pricing_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PricingScreenViewmodel extends StateNotifier<PricingState> {
  final FaqRepository _faqRepository = FaqRepository();
  final PlanRespository _planRepository = PlanRespository();

  PricingScreenViewmodel() : super(PricingState.initial()) {
    fetchFaqs();
    fetchPlans();
  }

  Future<void> fetchFaqs() async {
    final faqs = await _faqRepository.fetchFaqs();
    state = state.copyWith(faqState: FAQState(faqs: faqs));
  }

  Future<void> fetchPlans() async {
    final plans = await _planRepository.fetchPlans();
    state = state.copyWith(planState: PlanState(plans: plans));
  }

  void togglePricing() {
    state = state.copyWith(isPricingToggled: !state.isPricingToggled);
  }
}

final appStateProvider =
    StateNotifierProvider<PricingScreenViewmodel, PricingState>((ref) {
  return PricingScreenViewmodel();
});