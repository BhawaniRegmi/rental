class ServiceModel {
  final String title;
  final String description;
  final String icon;

  ServiceModel({
    required this.title,
    required this.description,
    required this.icon,
  });

  // Factory method to create an instance from a Map (useful for API integration)
  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      title: json["title"],
      description: json["description"],
      icon: json["icon"],
    );
  }
}
