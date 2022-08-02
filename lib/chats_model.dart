class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel(
      {required this.message, required this.name, required this.avatarUrl, required this.time});
}
  List<ChatModel> dummyData =[
    new ChatModel(
        message: "Hello",
        name: "Fethi",
        avatarUrl: "https://th.bing.com/th/id/OIP.PlUghRkXvx9eqZvManVhsgHaIS?w=190&h=213&c=7&r=0&o=5&dpr=1.25&pid=1.7",
        time: "12:30"),

    new ChatModel(
        message: "Hi",
        name: "Hamza",
        avatarUrl: "https://th.bing.com/th/id/OIP.PlUghRkXvx9eqZvManVhsgHaIS?w=190&h=213&c=7&r=0&o=5&dpr=1.25&pid=1.7",
        time: "12:00"),

    new ChatModel(
        message: "How are you",
        name: "Adel",
        avatarUrl: "https://th.bing.com/th/id/OIP.PlUghRkXvx9eqZvManVhsgHaIS?w=190&h=213&c=7&r=0&o=5&dpr=1.25&pid=1.7",
        time: "00:00"),


  ];
