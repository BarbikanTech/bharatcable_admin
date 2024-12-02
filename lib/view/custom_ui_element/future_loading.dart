import 'package:flutter/material.dart';

futureLoading(context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    // ignore: deprecated_member_use
    builder: (context) => WillPopScope(
      onWillPop: () async => false,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: const CircularProgressIndicator(
            color: Color(0xff2F4550),
          ),
        ),
      ),
    ),
  );
}

futureWaitingLoading() {
  return const Center(
    child: CircularProgressIndicator(
      color: Color(0xff2F4550),
    ),
  );
}
