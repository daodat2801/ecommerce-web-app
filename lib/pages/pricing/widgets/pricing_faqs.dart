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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color.fromRGBO(35, 166, 240, 1),
          width: 1,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              height: 32 / 24,
            ),
          ),
          const SizedBox(height: 8),
          // Description
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Color.fromRGBO(115, 115, 115, 1),
            ),
          ),
          const SizedBox(height: 24),
          // FAQs Layout (Two columns)
          LayoutBuilder(
            builder: (context, constraints) {
              // Split questions into two columns
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
        ],
      ),
    );
  }

  // Helper to build a single FAQ item
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
              color: Color.fromRGBO(115, 115, 115, 1),
            ),
          ),
        ],
      ),
    );
  }
}
