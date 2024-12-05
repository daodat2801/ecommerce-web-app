class StatisticsSection {
  final String happyCustomers;
  final String monthlyVisitors;
  final String countriesWorldwide;
  final String topPartners;

  StatisticsSection({
    required this.happyCustomers,
    required this.monthlyVisitors,
    required this.countriesWorldwide,
    required this.topPartners,
  });

  factory StatisticsSection.fromJson(Map<String, dynamic> json) {
    return StatisticsSection(
      happyCustomers: json['happyCustomers'],
      monthlyVisitors: json['monthlyVisitors'],
      countriesWorldwide: json['countriesWorldwide'],
      topPartners: json['topPartners'],
    );
  }
}
