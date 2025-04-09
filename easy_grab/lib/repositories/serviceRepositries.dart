import 'package:easy_grab/models/service_models.dart';



class ServiceRepository {
  // Simulated API call to fetch services
  Future<List<ServiceModel>> fetchServices() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay

    return [
      ServiceModel(
        title: "Fast Delivery",
        description: "Quick and reliable delivery services.",
        icon: "local_shipping",
      ),
      ServiceModel(
        title: "Real-time Tracking",
        description: "Track your shipment anytime, anywhere.",
        icon: "track_changes",
      ),
      ServiceModel(
        title: "Business Accounts",
        description: "Custom solutions for businesses.",
        icon: "business",
      ),
      ServiceModel(
        title: "24/7 Support",
        description: "We are always here to help.",
        icon: "support_agent",
      ),
    ];
  }
}
