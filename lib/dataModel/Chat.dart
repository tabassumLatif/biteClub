class Chat {
  final int userId;
  final int id;
  final String title;
  final String body;

  Chat(this.userId, this.id, this.title, this.body);


  /*factory Chat.fromJson(Map<String, dynamic> json) {
    return new Chat(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }*/
}