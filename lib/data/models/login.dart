class LoginModel {
  int? id;
  String? email;
  String? name;

  LoginModel({
    this.id,
    this.email,
    this.name,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        id: json["id"],
        email: json["email"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "name": name,
      };
}
