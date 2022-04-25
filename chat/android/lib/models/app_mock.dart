import 'package:chat_app/models/chat.dart';
import 'package:chat_app/models/messages.dart';
import 'package:chat_app/models/user.dart';
import 'package:flutter/material.dart';

final henry = User(
  login: 'Henry Ford',
  color: Colors.teal.shade900,
);
final emma = User(
  login: 'Emma Swan',
  color: Colors.purple.shade900,
  imageUrl: 'https://wallpaperaccess.com/full/7743357.jpg',
);

final chat = [
  Chat(
    dateTime: DateTime(2022, 04, 15, 22, 32, 2),
    messages: [
      const Messages(
        messages: [
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
              'tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
          'Duis aute irure dolor in',
          'Duis aute',
        ],
      ),
      Messages(
        messages: const [
          'Lorem ipsum dolor sit',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
              'Duis aute irure dolor in reprehenderit in voluptate velit esse',
        ],
        user: henry,
      ),
      const Messages(
        messages: [
          'tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
          'Duis aute irure dolor in reprehenderit in voluptate velit esse',
        ],
      ),
      Messages(
        messages: const [
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
        ],
        user: henry,
      ),
      Messages(
        messages: const [
          'tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud '
              'exercitation ullamco laboris nisi ut aliquip ex ea commodo',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
        ],
        user: emma,
      ),
    ],
  ),
  Chat(
    dateTime: DateTime(2022, 4, 22, 3),
    messages: [
      Messages(
        messages: const [
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
              'tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
          'Duis aute irure dolor in reprehenderit in voluptate velit esse',
        ],
        user: henry,
      ),
      const Messages(
        messages: [
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
              'Duis aute irure dolor in reprehenderit in voluptate velit esse',
        ],
      ),
      Messages(
        messages: const [
          'tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
          'Duis aute irure dolor in reprehenderit in voluptate velit esse',
        ],
        user: emma,
      ),
      Messages(
        messages: const [
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
        ],
        user: henry,
      ),
      const Messages(
        messages: [
          'tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud '
              'exercitation ullamco laboris nisi ut aliquip ex ea commodo',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
        ],
      ),
    ],
  ),
  Chat(
    dateTime: DateTime.now(),
    messages: [
      Messages(
        messages: const [
          'Lorem ipsum dolor sit amet, sed do eiusmod ',
          'ullamco laboris nisi',
        ],
        user: emma,
      ),
    ],
  ),
];
