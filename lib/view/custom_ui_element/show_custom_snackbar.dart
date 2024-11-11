import 'package:flutter/material.dart';

showCustomSnackBar(context, {required String content, required bool isSuccess}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: isSuccess ? Colors.green : Colors.red,
      content: Text(content),
    ),
  );
}
