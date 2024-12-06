import 'package:ecommerce_web_app/models/faq.dart';
import 'package:ecommerce_web_app/models/plan.dart';

class FAQState{
  final List<FAQ> faqs;
  FAQState({required this.faqs});
  factory FAQState.initial(){
    return FAQState(faqs: []);
  }
  FAQState copyWith({List<FAQ>? faqs}){
    return FAQState(faqs: faqs ?? this.faqs);
  }
}
class PlanState{
  final List<Plan> plans;
  PlanState({required this.plans});
  factory PlanState.initial(){
    return PlanState(plans: []);
  }
  PlanState copyWith({List<Plan>? plans}){
    return PlanState(plans: plans ?? this.plans);
  }
}
class PricingState {
  final FAQState faqState;
  final PlanState planState;
  final bool isPricingToggled;

  PricingState({
    required this.faqState,
    required this.planState,
    required this.isPricingToggled,
  });

  factory PricingState.initial() {
    return PricingState(
      faqState: FAQState.initial(),
      planState: PlanState.initial(),
      isPricingToggled: false,
    );
  }

  PricingState copyWith({
    FAQState? faqState,
    PlanState? planState,
    bool? isPricingToggled,
  }) {
    return PricingState(
      faqState: faqState ?? this.faqState,
      planState: planState ?? this.planState,
      isPricingToggled: isPricingToggled ?? this.isPricingToggled,
    );
  }
}