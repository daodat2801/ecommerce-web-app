 import 'package:ecommerce_web_app/data/faq_repository.dart';
import 'package:ecommerce_web_app/data/plan_respository.dart';
import 'package:ecommerce_web_app/pages/pricing/pricing_screen_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListFAQs extends StateNotifier<FAQState> {
      final FaqRepository _repository = FaqRepository();
      ListFAQs() : super(FAQState.initial()) {
        fetchFaqs();
      }
      Future<void> fetchFaqs() async {
        final faqs = await _repository.fetchFaqs();
        state = FAQState(faqs: faqs);
      }

}
class PricingStateNotifier extends StateNotifier<bool> {
  PricingStateNotifier() : super(false); 

  void toggle() => state = !state; 
}

final pricingProvider =
    StateNotifierProvider<PricingStateNotifier, bool>((ref) {
  return PricingStateNotifier();
});
 
class ListPlans extends StateNotifier<PlanState> {
  final PlanRespository _repository = PlanRespository();
  ListPlans() : super(PlanState.initial()) {
    fetchPlans();
  }
  Future<void> fetchPlans() async {
    final plans = await _repository.fetchPlans();
    state = PlanState(plans: plans);
  }
}