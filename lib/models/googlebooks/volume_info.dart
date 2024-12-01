import 'package:sandbox/models/googlebooks/dimensions.dart';
import 'package:sandbox/models/googlebooks/image_links.dart';
import 'package:sandbox/models/googlebooks/industry_identifier.dart';

class VolumeInfo {
  final String title;
  final List<String> authors;
  final String publisher;
  final String publishedDate;
  final String description;
  final List<IndustryIdentifier> industryIdentifiers;
  final int pageCount;
  final Dimensions? dimensions;
  final String printType;
  final String mainCategory;
  final List<String> categories;
  final double? averageRating;
  final int? ratingsCount;
  final String contentVersion;
  final ImageLinks? imageLinks;
  final String language;
  final String infoLink;
  final String canonicalVolumeLink;

  VolumeInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.pageCount,
    this.dimensions,
    required this.printType,
    required this.mainCategory,
    required this.categories,
    this.averageRating,
    this.ratingsCount,
    required this.contentVersion,
    this.imageLinks,
    required this.language,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return VolumeInfo(
      title: json['title'],
      authors: List<String>.from(json['authors']),
      publisher: json['publisher'],
      publishedDate: json['publishedDate'],
      description: json['description'],
      industryIdentifiers: (json['industryIdentifiers'] as List)
          .map((i) => IndustryIdentifier.fromJson(i))
          .toList(),
      pageCount: json['pageCount'],
      dimensions: json['dimensions'] != null
          ? Dimensions.fromJson(json['dimensions'])
          : null,
      printType: json['printType'],
      mainCategory: json['mainCategory'],
      categories: List<String>.from(json['categories']),
      averageRating: json['averageRating']?.toDouble(),
      ratingsCount: json['ratingsCount'],
      contentVersion: json['contentVersion'],
      imageLinks: json['imageLinks'] != null
          ? ImageLinks.fromJson(json['imageLinks'])
          : null,
      language: json['language'],
      infoLink: json['infoLink'],
      canonicalVolumeLink: json['canonicalVolumeLink'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'authors': authors,
      'publisher': publisher,
      'publishedDate': publishedDate,
      'description': description,
      'industryIdentifiers':
          industryIdentifiers.map((i) => i.toJson()).toList(),
      'pageCount': pageCount,
      'dimensions': dimensions?.toJson(),
      'printType': printType,
      'mainCategory': mainCategory,
      'categories': categories,
      'averageRating': averageRating,
      'ratingsCount': ratingsCount,
      'contentVersion': contentVersion,
      'imageLinks': imageLinks?.toJson(),
      'language': language,
      'infoLink': infoLink,
      'canonicalVolumeLink': canonicalVolumeLink,
    };
  }
}
