class Discover {
  final image;
  final title;
  final subtitle;

  Discover({required this.image, required this.title, required this.subtitle});

  static final List<Discover> data = [
    Discover(image: "imageurl", title: "triptitle", subtitle: "subtitle")
  ];
}
