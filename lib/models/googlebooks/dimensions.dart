class Dimensions {
  final String height;
  final String width;
  final String thickness;

  Dimensions({
    required this.height,
    required this.width,
    required this.thickness,
  });

  factory Dimensions.fromJson(Map<String, dynamic> json) {
    return Dimensions(
      height: json['height'],
      width: json['width'],
      thickness: json['thickness'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'height': height,
      'width': width,
      'thickness': thickness,
    };
  }
}
