import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeTile extends StatelessWidget {
  final DateTime dateTime;

  const DateTimeTile({
    Key? key,
    required this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      alignment: Alignment.center,
      child: Text(
        DateFormat('MMM dd, HH:mm').format(dateTime),
      ),
    );
  }
}
