import 'package:flutter/material.dart';
import 'package:kiri/app/presentation/widgets/app_header.dart';

class EditProfileScaffold extends StatelessWidget {
  final Widget child;
  const EditProfileScaffold({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppHeader(title: "Edit Profile"),
      body: child,
    );
  }
}
