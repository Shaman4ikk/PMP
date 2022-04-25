import 'dart:math';

import 'package:chat_app/models/messages.dart';
import 'package:chat_app/models/user.dart';
import 'package:chat_app/views/my_message.dart';
import 'package:chat_app/views/user_avatar.dart';
import 'package:chat_app/views/user_message.dart';
import 'package:flutter/material.dart';

class MessagesView extends StatelessWidget {
  final Messages messages;

  const MessagesView({
    Key? key,
    required this.messages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = messages.user;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (user != null) ...[
          const SizedBox(width: 8),
          UserAvatar(user: user),
        ],
        Expanded(
          child: _buildMessages(),
        ),
      ],
    );
  }

  Widget _buildMessages() {
    final user = messages.user;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: messages.messages.map((item) {
        if (user != null) {
          return UserMessage(
            isLast: messages.messages.last == item,
            isFirst: messages.messages.first == item,
            message: item,
            user: user,
            color: user.color,
          );
        }
        return MyMessage(
          isLast: messages.messages.last == item,
          message: item,
        );
      }).toList(),
    );
  }
}
