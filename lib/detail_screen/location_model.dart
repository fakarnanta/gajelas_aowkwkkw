import 'package:layarin_mvp/homepage/inbox_page/chat_model.dart';

class Locations {
  final String distance;
  final String title;
  final String subtitle;

  Locations(
      {required this.distance, required this.title, required this.subtitle});

  static final List<Locations> data = [
    Locations(
        distance: "5.0 km",
        title: "Pulau Komodo",
        subtitle: "Manggarai Barat, Nusa Tenggara Timur"),
    Locations(
        distance: "3.0 km",
        title: "Bukit Cinta",
        subtitle: "Manggarai Barat, Nusa Tenggara Timur")
  ];

  get onLocationChanged => null;
}
