import 'package:flutter/material.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 195),
      color: const Color(0xFFFFFFFF),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
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
                        color: Color(0xFFE74040),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Met minim Mollie non desert\nAlamo est sit cliquey dolor do \nmet sent.",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF252B42),
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
                    // #737373
                    color: Color(0xFF737373),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StatisticItem(
                number: "15K",
                description: "Happy Customers",
              ),
              StatisticItem(
                number: "150K",
                description: "Monthly Visitors",
              ),
              StatisticItem(
                number: "15",
                description: "Countries Worldwide",
              ),
              StatisticItem(
                number: "100+",
                description: "Top Partners",
              ),
            ],
          ),
        ],
      ),
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
            color: Color(0xFF252B42),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF737373),
          ),
        ),
      ],
    );
  }
}
