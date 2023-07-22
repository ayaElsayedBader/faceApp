class TodoModel {
  final String title;
  final int id;

  TodoModel({required this.title, required this.id});

  factory TodoModel.fromJson(Map<String, dynamic> data) {
    return TodoModel(title: data ['title'], id: data['id']);
  }

  Map<String, dynamic> toJson() {
    return {'title': title, 'id': id};
  }
}
