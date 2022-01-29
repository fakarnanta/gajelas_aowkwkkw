class Place {
  final location;
  final image;
  final title;
  final description;

  Place(
      {required this.location,
      required this.image,
      required this.title,
      required this.description});

  static final List<Place> data = [
    Place(
        location: "Nusa Tenggara Timut, ID",
        image: "",
        title: "Lorem Ipsum Dolor Amet",
        description: "lorem impsum dolor amet")
  ];
}
