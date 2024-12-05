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