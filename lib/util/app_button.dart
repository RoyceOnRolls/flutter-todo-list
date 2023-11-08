// ignore_for_file: must_be_immutable, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  AppButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      color: Theme.of(context).primaryColor,
    );
  }
}
