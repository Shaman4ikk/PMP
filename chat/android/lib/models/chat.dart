import 'package:equatable/equatable.dart';

import 'package:chat_app/models/messages.dart';

class Chat extends Equatable {
  final DateTime dateTime;
  final List<Messages> messages;

  const Chat({
    required this.dateTime,
    required this.messages,
  });

  @override
  List<Object> get props => [dateTime, messages];
}
