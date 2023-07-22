import 'package:flutter/material.dart';

import '../../features/comment_ screen/data/model.dart';

class GetAllTodo extends StatelessWidget {
  const GetAllTodo({Key? key, required this.todo}) : super(key: key);
  final List<TodoModel> todo;

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Expanded(
        child: ListView.builder(
          itemCount: todo.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(todo[index].id.toString()),
              ),
              title: Text(todo[index].title),
            );
          },
        ),

    ));
  }
}
