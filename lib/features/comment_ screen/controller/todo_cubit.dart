import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/model.dart';
import '../data/remote_data_scource.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  int select = 0;

  TodoCubit({required this.apiServer}) : super(TodoInitial());
  ApiServer apiServer;

  getData() async {
    emit(TodoLoading());
    final success = await apiServer.getData();
    success.fold((l) {
      emit(TodoFailure(message: 'Not DaTA Try Again'));
    }, (r) {
      emit(TodoSuccess(todo: r));
    });
  }

  plusNumber({required int currentSelect}) {
    select = currentSelect;
    emit(PusCurrentSelect());
  }
}
