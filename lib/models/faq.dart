class FAQ {
  final String question;
  final String answer;

  FAQ({required this.question, required this.answer});

  // Factory method to create a FAQ object from JSON
  factory FAQ.fromJson(Map<String, dynamic> json) {
    return FAQ(
      question: json['question'] as String,
      answer: json['answer'] as String,
    );
  }

  // Method to convert a FAQ object to JSON
  Map<String, dynamic> toJson() {
    return {
      'question': question,
      'answer': answer,
    };
  }
}
