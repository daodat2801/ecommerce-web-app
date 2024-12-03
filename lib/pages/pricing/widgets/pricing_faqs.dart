import 'package:flutter/material.dart';

class PricingFaqs extends StatelessWidget {
  final String title;
  final String description;
  final List<Map<String, String>> questions;

  const PricingFaqs({
    super.key,
    required this.title,
    required this.description,
    required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 700,
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Text(
            title,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              height: 50 / 40,
              letterSpacing: 0.2,
              color: Color.fromRGBO(37, 43, 66, 1),
            ),
          ),
          const SizedBox(height: 8),

          // Description
          SizedBox(
            width: 552,
            child: Text(
              description,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(115, 115, 115, 1),
                height: 30 / 20,
                letterSpacing: 0.2,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 24),
          LayoutBuilder(
            builder: (context, constraints) {
              List<List<Map<String, String>>> columns = [
                questions.sublist(0, (questions.length / 2).ceil()),
                questions.sublist((questions.length / 2).ceil()),
              ];
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: columns[0].map((question) {
                        return _buildQuestionItem(question);
                      }).toList(),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Second column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: columns[1].map((question) {
                        return _buildQuestionItem(question);
                      }).toList(),
                    ),
                  ),
                ],
              );
            },
          ),
         const SizedBox(height: 40),
          const Text(
            'Haven’t got your answer? Contact our support',
            style: TextStyle(
              color: Color.fromRGBO(115, 115, 115, 1),
              fontSize: 20,
              fontWeight: FontWeight.w400,
              height: 30 / 20,
              letterSpacing: 0.2,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  Widget _buildQuestionItem(Map<String, String> question) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color.fromRGBO(35, 166, 240, 1),
              ),
              Expanded(
                child: Text(
                  question['question']!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(37, 43, 66, 1),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 6,
            question['answer']!,
            style: const TextStyle(
              fontSize: 14,
              height: 20 / 14,
              letterSpacing: 0.2,
              color: Color.fromRGBO(115, 115, 115, 1),
            ),
          ),
        ],
      ),
    );
  }
}
