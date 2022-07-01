class ImageModel {
  String? id;
  int? width;
  int? height;
  String? url;

  ImageModel({
    this.id,
    this.width,
    this.height,
    this.url,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        id: json["id"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
      };
}
