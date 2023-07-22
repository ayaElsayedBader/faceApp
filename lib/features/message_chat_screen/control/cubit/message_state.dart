part of 'message_cubit.dart';

@immutable
abstract class MessageState {}
class MessageInitial  extends MessageState{}
class MessageSuccess extends MessageState {

  final List < ModelMessage>message;

  MessageSuccess({ required this.message});
}
class MessageLoading extends MessageState {}
class MessageError extends MessageState {

  final String message;

  MessageError({ required this.message});
}
