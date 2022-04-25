import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class User extends Equatable {
  final String login;
  final String? imageUrl;
  final Color color;

  const User({
    required this.login,
    required this.color,
    this.imageUrl,
  });

  @override
  List<Object?> get props => [login, imageUrl];
}
