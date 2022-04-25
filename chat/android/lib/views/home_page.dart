import 'package:chat_app/models/chat.dart';
import 'package:chat_app/views/date_time_tile.dart';
import 'package:chat_app/views/messages_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Chat> chat;

  const HomePage({
    Key? key,
    required this.chat,
  }) : super(key: key);

  List<Widget> _getChat() {
    final items = <Widget>[];
    for (final item in chat) {
      items.add(DateTimeTile(dateTime: item.dateTime));
      for (final messages in item.messages) {
        items.add(MessagesView(messages: messages));
      }
    }
    items.add(const SizedBox(height: 112));
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: _getChat(),
      ),
      bottomSheet: _buildBottomSheet(),
    );
  }

  Widget _buildBottomSheet() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.insert_drive_file_outlined,
            size: 28,
            color: Colors.white,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: _buildTextInput(),
          ),
        ],
      ),
    );
  }

  Widget _buildTextInput() {
    return TextField(
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      maxLines: null,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Your message',
        hintStyle: TextStyle(
          fontSize: 20,
          color: Colors.white.withOpacity(0.75),
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
