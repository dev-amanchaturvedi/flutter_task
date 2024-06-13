import 'package:flutter/material.dart';

class ResuableTileData {
  static Row giveTile({required String data, required Icon icon}) {
    return Row(
      children: [
        icon,
        Text(
          data,
        )
      ],
    );
  }
}
