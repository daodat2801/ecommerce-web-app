import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/services/about_us_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatisticsSection extends ConsumerWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statisticsAsync = ref.watch(statisticsProvider);

    return statisticsAsync.when(
      data: (statistics) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 195),
          color: AppColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Problems trying",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textRedColor,
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          "Met minim Mollie non desert\nAlamo est sit cliquey dolor do \nmet sent.",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: AppColors.productColorBlack,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      "Problems trying to resolve the conflict between the two major realms of\nClassical physics: Newtonian mechanics.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textSecondaryColor3,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StatisticItem(
                    number: statistics.happyCustomers,
                    description: "Happy Customers",
                  ),
                  StatisticItem(
                    number: statistics.monthlyVisitors,
                    description: "Monthly Visitors",
                  ),
                  StatisticItem(
                    number: statistics.countriesWorldwide,
                    description: "Countries Worldwide",
                  ),
                  StatisticItem(
                    number: statistics.topPartners,
                    description: "Top Partners",
                  ),
                ],
              ),
            ],
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) =>
          const Center(child: Text('Something went wrong')),
    );
  }
}

class StatisticItem extends StatelessWidget {
  final String number;
  final String description;

  const StatisticItem({
    super.key,
    required this.number,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
            fontSize: 58,
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimaryColor,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.textMediumGrayColor,
          ),
        ),
      ],
    );
  }
}
