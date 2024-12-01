class Epub {
  final bool isAvailable;
  final String? acsTokenLink;

  Epub({required this.isAvailable, this.acsTokenLink});

  factory Epub.fromJson(Map<String, dynamic> json) {
    return Epub(
      isAvailable: json['isAvailable'],
      acsTokenLink: json['acsTokenLink'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isAvailable': isAvailable,
      'acsTokenLink': acsTokenLink,
    };
  }
}
