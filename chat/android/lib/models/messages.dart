import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:chat_app/models/user.dart';

class Messages extends Equatable {
  final List<String> messages;
  final User? user;

  const Messages({
    required this.messages,
    this.user,
  });

  @override
  List<Object?> get props => [messages, user];
}
