import 'package:sandbox/models/googlebooks/access_info.dart';
import 'package:sandbox/models/googlebooks/sale_info.dart';
import 'package:sandbox/models/googlebooks/volume_info.dart';

class Book {
  final String kind;
  final String id;
  final String etag;
  final String selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo saleInfo;
  final AccessInfo accessInfo;

  Book({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      kind: json['kind'],
      id: json['id'],
      etag: json['etag'],
      selfLink: json['selfLink'],
      volumeInfo: VolumeInfo.fromJson(json['volumeInfo']),
      saleInfo: SaleInfo.fromJson(json['saleInfo']),
      accessInfo: AccessInfo.fromJson(json['accessInfo']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kind': kind,
      'id': id,
      'etag': etag,
      'selfLink': selfLink,
      'volumeInfo': volumeInfo.toJson(),
      'saleInfo': saleInfo.toJson(),
      'accessInfo': accessInfo.toJson(),
    };
  }
}
