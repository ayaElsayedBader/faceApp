part of 'todo_cubit.dart';

@immutable
abstract class TodoState {}

class TodoInitial extends TodoState {}

class TodoSuccess extends TodoState {
  final List<TodoModel> todo;

  TodoSuccess({required this.todo});
}

class TodoLoading extends TodoState {}

class TodoFailure extends TodoState {
  final String message;

  TodoFailure({required this.message});
}


class PusCurrentSelect extends   TodoState{}
