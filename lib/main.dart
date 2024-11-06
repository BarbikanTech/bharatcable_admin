import 'package:bharatcable_admin/view/landing_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bharathcable',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffEEEEEE),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff40beee)),
        useMaterial3: true,
      ),
      home: const LandingView(),
    );
  }
}
