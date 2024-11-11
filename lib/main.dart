import 'package:bharatcable_admin/view/auth/login_view.dart';
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
          appBarTheme: const AppBarTheme(surfaceTintColor: Colors.white)),
      //home: isLogin ? const LandingView() : const LoginView(),
      home: const LoginpageView(),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'view/auth/login_view.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   ThemeMode _themeMode = ThemeMode.light;

//   // Function to change theme mode based on selection
//   void _changeTheme(String theme) {
//     setState(() {
//       if (theme == 'Dark Mode') {
//         _themeMode = ThemeMode.dark;
//       } else if (theme == 'System Default') {
//         _themeMode = ThemeMode.system;
//       } else {
//         _themeMode = ThemeMode.light;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Bharath Cable',
//       theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       themeMode: _themeMode,
//       home: const LoginpageView(),
//     );
//   }
// }
