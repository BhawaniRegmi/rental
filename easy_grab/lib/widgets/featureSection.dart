import 'package:easy_grab/models/service_models.dart';
import 'package:easy_grab/repositories/serviceRepositries.dart';
import 'package:flutter/material.dart';


class FeatureSection extends StatefulWidget {
  @override
  _FeatureSectionState createState() => _FeatureSectionState();
}

class _FeatureSectionState extends State<FeatureSection> {
  late Future<List<ServiceModel>> _servicesFuture;
  final ServiceRepository _serviceRepository = ServiceRepository();

  @override
  void initState() {
    super.initState();
    _servicesFuture = _serviceRepository.fetchServices();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Our Services",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          FutureBuilder<List<ServiceModel>>(
            future: _servicesFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text("Error loading services"));
              } else {
                final services = snapshot.data!;
                return GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return FeatureTile(
                      icon: _getIcon(services[index].icon),
                      title: services[index].title,
                      description: services[index].description,
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }

  IconData _getIcon(String iconName) {
    switch (iconName) {
      case "local_shipping":
        return Icons.local_shipping;
      case "track_changes":
        return Icons.track_changes;
      case "business":
        return Icons.business;
      case "support_agent":
        return Icons.support_agent;
      default:
        return Icons.help_outline;
    }
  }
}

class FeatureTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureTile({
    required this.icon,
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.orange),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
