import 'package:flutter/material.dart';

futureError({required String title, required String content}) {
  return Container(
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          content,
          style: TextStyle(color: Colors.grey.shade500, fontSize: 13),
        ),
      ],
    ),
  );
}
