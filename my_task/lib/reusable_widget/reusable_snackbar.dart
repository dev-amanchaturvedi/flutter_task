import 'package:flutter/material.dart';

class ReusableSnackBar {
  static SnackBar give({required Color color, required String text}) {
    return SnackBar(
      content: Text(text, style: TextStyle(color: color)),
      backgroundColor: Colors.white,
    );
  }
}
