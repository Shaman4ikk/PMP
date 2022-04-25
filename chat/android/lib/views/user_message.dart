import 'package:chat_app/models/user.dart';
import 'package:flutter/material.dart';

const radius = Radius.circular(24);

class UserMessage extends StatelessWidget {
  final String message;
  final User user;
  final bool isLast;
  final bool isFirst;
  final Color color;

  const UserMessage({
    Key? key,
    required this.isLast,
    required this.message,
    required this.user,
    required this.isFirst,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.fromLTRB(8, 4, 40, 4),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.only(
            topLeft: radius,
            topRight: radius,
            bottomRight: radius,
            bottomLeft: isLast ? Radius.zero : radius,
          ),
        ),
        child: _buildText(),
      ),
    );
  }

  Widget _buildText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isFirst) ...[
          Text(
            user.login,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: color,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
        Text(
          message,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
