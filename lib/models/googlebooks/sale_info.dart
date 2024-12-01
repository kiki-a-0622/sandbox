import 'package:sandbox/models/googlebooks/price.dart';

class SaleInfo {
  final String country;
  final String saleability;
  final bool isEbook;
  final Price? listPrice;
  final Price? retailPrice;
  final String? buyLink;

  SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return SaleInfo(
      country: json['country'],
      saleability: json['saleability'],
      isEbook: json['isEbook'],
      listPrice:
          json['listPrice'] != null ? Price.fromJson(json['listPrice']) : null,
      retailPrice: json['retailPrice'] != null
          ? Price.fromJson(json['retailPrice'])
          : null,
      buyLink: json['buyLink'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country,
      'saleability': saleability,
      'isEbook': isEbook,
      'listPrice': listPrice?.toJson(),
      'retailPrice': retailPrice?.toJson(),
      'buyLink': buyLink,
    };
  }
}
