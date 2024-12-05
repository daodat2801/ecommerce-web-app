class Plan {
  final String name;
  final double price;
  final String currency;
  final String period;
  final List<String> features;
  final String cta;

  Plan({
    required this.name,
    required this.price,
    required this.currency,
    required this.period,
    required this.features,
    required this.cta,
  });

  factory Plan.fromJson(Map<String, dynamic> json) {
    return Plan(
      name: json['name'] ?? '',
      price: (json['price'] != null)
          ? double.tryParse(json['price'].toString()) ?? 0.0
          : 0.0,
      currency: json['currency'] ?? '',
      period: json['period'] ?? '',
      features:
          json['features'] != null ? List<String>.from(json['features']) : [],
      cta: json['cta'] ?? '',
    );
  }

  List<Object> get props => [name, price, currency, period, features, cta];
}
