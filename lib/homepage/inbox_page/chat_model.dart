class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  ChatModel(
      {required this.avatarUrl,
      required this.name,
      required this.datetime,
      required this.message});

  static final List<ChatModel> data = [
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/34.jpg",
      name: "Anonim",
      datetime: "20:18",
      message: "Halo",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
      name: "Anonim",
      datetime: "19:22",
      message: "Hello World",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
      name: "Anonim",
      datetime: "14:34",
      message: "Halo",
    ),
  ];
}
