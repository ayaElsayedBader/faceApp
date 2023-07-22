
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';

import '../../features/comment_ screen/controller/todo_cubit.dart';
import 'get_all_todo.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(  color:  Colors.white,
          child: BlocBuilder<TodoCubit, TodoState>(builder: (context, state) {
        if (state is TodoSuccess) {
          return GetAllTodo(todo: state.todo);
        } else if (state is TodoFailure) {
          return Text(state.message);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      })),
    );
  }
}
