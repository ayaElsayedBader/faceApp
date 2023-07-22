class ModelMessage {
  final String title;
  final String body;
  final int id;

  ModelMessage({required this.title, required this.body, required this.id});

  factory ModelMessage.fromJson(Map<String, dynamic> data) {
    return ModelMessage(
        title: data['title'], body: data['body'], id: data['id']);
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'body': body, 'id': id};
  }
}
