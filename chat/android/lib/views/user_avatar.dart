import 'package:chat_app/models/user.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final User user;
  const UserAvatar({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image = user.imageUrl;
    return CircleAvatar(
      radius: 24,
      backgroundColor: user.color.withOpacity(0.25),
      backgroundImage: image != null ? NetworkImage(image) : null,
      child: image != null
          ? null
          : Text(
              user.login[0].toUpperCase(),
              style: TextStyle(
                color: user.color,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
    );
  }
}
