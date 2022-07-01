class Height {
  String? imperial;
  String? metric;

  Height({
    this.imperial,
    this.metric,
  });

  factory Height.fromJson(Map<String, dynamic> json) => Height(
        imperial: json["imperial"],
        metric: json["metric"],
      );

  Map<String, dynamic> toJson() => {
        "imperial": imperial,
        "metric": metric,
      };
}
