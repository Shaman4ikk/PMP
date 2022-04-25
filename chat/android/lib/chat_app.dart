import 'package:chat_app/models/app_mock.dart';
import 'package:chat_app/views/home_page.dart';
import 'package:flutter/material.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(chat: chat),
    );
  }
}
