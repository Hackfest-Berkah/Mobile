import 'package:flutter/material.dart';

class ProfileSection {
  final Widget icon;
  final String text;
  final String? redirect;

  const ProfileSection({
    required this.icon,
    required this.text,
    this.redirect,
  });
}
