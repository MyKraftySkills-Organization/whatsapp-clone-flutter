class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Modi Ji",
      message: "Are bhaiya mere muh se nikal gyi",
      time: "15:30",
      avatarUrl:
          "https://th.thgim.com/news/national/iogff3/article30067660.ece/alternates/FREE_435/BRICS-SUMMITLEADERSTHNAK"),
  new ChatModel(
      name: "Obama",
      message: "Are bhaiya mere muh se nikal gyi",
      time: "15:30",
      avatarUrl:
          "https://i.insider.com/59c387d3ba785e34910e27b4?width=1100&format=jpeg&auto=webp"),
  new ChatModel(
      name: "Trump",
      message: "Are bhaiya mere muh se nikal gyi",
      time: "15:30",
      avatarUrl: "https://images.indianexpress.com/2020/08/Trump-11.jpg"),
  new ChatModel(
      name: "Hillary Clinton",
      message: "Are bhaiya mere muh se nikal gyi",
      time: "15:30",
      avatarUrl:
          "https://static.politico.com/a3/79/4413035c4c809afc90f62aacdf34/200821-hillary-clinton-ap-773.jpg"),
  new ChatModel(
      name: "George Bush",
      message: "Are bhaiya mere muh se nikal gyi",
      time: "15:30",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/commons/d/d4/George-W-Bush.jpeg")
];
