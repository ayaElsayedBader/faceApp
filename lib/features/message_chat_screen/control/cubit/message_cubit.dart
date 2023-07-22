import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../model/data/remote_data_scource.dart';
import '../../model/model_message/model_message.dart';

part 'message_state.dart';

class MessageCubit extends Cubit<MessageState>  {
  ApiServerMessage apiServer;

  MessageCubit({required this.apiServer}) : super(MessageInitial());

  void getMessageDataCubit()  async {
    emit(MessageLoading());

    final data = await apiServer.getDataMessage();
    data.fold((l) {
      emit(MessageError(message: 'Not Data Here '));
    }, (successMessage) {
      emit(MessageSuccess(message: successMessage));
    });
  }
}
