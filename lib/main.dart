// import 'package:bharatcable_admin/view/auth/login_view.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Bharathcable',
//       theme: ThemeData(
//           scaffoldBackgroundColor: const Color(0xffEEEEEE),
//           colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff40beee)),
//           useMaterial3: true,
//           appBarTheme: const AppBarTheme(surfaceTintColor: Colors.white)),
//       //home: isLogin ? const LandingView() : const LoginView(),
//       home: const LoginpageView(),
//     );
//   }
// }
import 'package:bharatcable_admin/view/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'themeprovider_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bharathcable',
      themeMode: themeProvider.themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
        // backgroundColor: Colors.white,
        textTheme: const TextTheme(labelLarge: TextStyle(color: Colors.black)),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        //// backgroundColor: Colors.black,
        textTheme: const TextTheme(labelLarge: TextStyle(color: Colors.white)),
      ),
      home: const LoginpageView(),
    );
  }
}
