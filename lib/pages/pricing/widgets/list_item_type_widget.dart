import 'package:ecommerce_web_app/pages/pricing/widgets/item_type_widget.dart';
import 'package:ecommerce_web_app/services/view_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListItemTypeWidget extends ConsumerWidget{
  const ListItemTypeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isStatePlan  = ref.watch(ViewModelProvider.pricingProvider);
    final planState = ref.watch(ViewModelProvider.planScreenVMProvider);
    ref.watch(ViewModelProvider.planScreenVMProvider.notifier).fetchPlans();
    return Container(

    child: Row(
   mainAxisAlignment: MainAxisAlignment.center,
   crossAxisAlignment: CrossAxisAlignment.end,
   children:[
    if(!isStatePlan)
    ...planState.plans.map((plan) => ItemTypeWidget(
      name: plan.name,
      price: plan.price.toString(),
      currency: plan.currency,
      period: plan.period,
      features: plan.features,
      cta: plan.cta,
      isChoice: plan.name =='Standard' ? true : false,
      isFree: plan.name == 'Free' ? true : false,
    )),
    if(isStatePlan)
    ...planState.plans.map((plan) => ItemTypeWidget(
      name: plan.name,
      price: (plan.price*12).toString(),
      currency: plan.currency,
      period: plan.period,
      features: plan.features,
      cta: plan.cta,
      isChoice: plan.name =='Standard' ? true : false,
      isFree: plan.name == 'Free' ? true : false,
    )),
   ]
 ),
    );
  }
}