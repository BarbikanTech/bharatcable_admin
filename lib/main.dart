import 'package:flutter/material.dart';

import 'view/landing_view.dart';

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
      //home: isLogin ? const LandingView() : const LoginView(),
      home: const LandingView(),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: FirstPage(),
//     );
//   }
// }

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('First Page')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               PageRouteBuilder(
//                 pageBuilder: (context, animation, secondaryAnimation) =>
//                     SecondPage(),
//                 transitionsBuilder:
//                     (context, animation, secondaryAnimation, child) {
//                   // Fade transition
//                   return FadeTransition(opacity: animation, child: child);
//                 },
//               ),
//             );
//           },
//           child: Text('Go to Second Page'),
//         ),
//       ),
//     );
//   }
// }

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Second Page')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Back to First Page'),
//         ),
//       ),
//     );
//   }
// }
