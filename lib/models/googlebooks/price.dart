class Price {
  final double amount;
  final String currencyCode;

  Price({required this.amount, required this.currencyCode});

  factory Price.fromJson(Map<String, dynamic> json) {
    return Price(
      amount: json['amount'],
      currencyCode: json['currencyCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currencyCode': currencyCode,
    };
  }
}
