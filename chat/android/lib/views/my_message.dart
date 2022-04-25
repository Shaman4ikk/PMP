import 'package:flutter/material.dart';

const radius = Radius.circular(24);

class MyMessage extends StatelessWidget {
  final String message;
  final bool isLast;

  const MyMessage({
    Key? key,
    required this.isLast,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.fromLTRB(72, 4, 8, 4),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        decoration: BoxDecoration(
          color: Colors.deepPurple[600],
          borderRadius: BorderRadius.only(
            topLeft: radius,
            topRight: radius,
            bottomLeft: radius,
            bottomRight: isLast ? Radius.zero : radius,
          ),
        ),
        child: Text(
          message,
          textAlign: TextAlign.right,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
