// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ReportPage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class ReportPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Reports"),
//         backgroundColor: Colors.black,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Reports',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             Stack(
//               alignment: Alignment.center,
//               children: [
//                 AspectRatio(
//                   aspectRatio: 1.3,
//                   child: PieChart(
//                     PieChartData(
//                       sectionsSpace: 4, // Space between sections
//                       centerSpaceRadius: 0, // Remove inner circle
//                       sections: _buildPieChartSections(),
//                     ),
//                   ),
//                 ),
//                 // Triangle Shape in the Center
//                 // Positioned(
//                 //   child: ClipPath(
//                 //     clipper: TriangleClipper(),
//                 //     child: Container(
//                 //       width: 100,
//                 //       height: 100,
//                 //       color: Colors.white,
//                 //     ),
//                 //   ),
//                 // ),
//               ],
//             ),
//             SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 _buildLegendIndicator(Colors.blue, "Unpaid"),
//                 SizedBox(width: 10),
//                 _buildLegendIndicator(Colors.lightBlueAccent, "Paid"),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Pie Chart Sections Data
//   List<PieChartSectionData> _buildPieChartSections() {
//     return [
//       PieChartSectionData(
//         color: Colors.blue,
//         value: 78,
//         title: '78%',
//         radius: 100,
//         titleStyle: TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//         ),
//         titlePositionPercentageOffset: 0.6, // Position inside the section
//       ),
//       PieChartSectionData(
//         color: Colors.lightBlueAccent,
//         value: 22,
//         title: '22%',
//         radius: 100,
//         titleStyle: TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//         ),
//         titlePositionPercentageOffset: 0.6,
//       ),
//     ];
//   }

//   // Legend Indicator Widget
//   Widget _buildLegendIndicator(Color color, String text) {
//     return Row(
//       children: [
//         Container(
//           width: 16,
//           height: 16,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: color,
//           ),
//         ),
//         SizedBox(width: 8),
//         Text(
//           text,
//           style: TextStyle(fontSize: 16),
//         ),
//       ],
//     );
//   }
// }

// // Custom Clipper to Create a Triangle
// class TriangleClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.moveTo(size.width / 4, 10); // Top center
//     path.lineTo(size.width, size.height); // Bottom right
//     path.lineTo(0, size.height); // Bottom left
//     path.close(); // Close the path
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ReportPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reports"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reports',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 1.3,
                  child: PieChart(
                    PieChartData(
                      sectionsSpace: 4,
                      centerSpaceRadius: 0,
                      sections: _buildPieChartSections(),
                    ),
                  ),
                ),
                // Triangle overlay positioned above the pie chart
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildLegendIndicator(Colors.blue, "Unpaid"),
                SizedBox(width: 10),
                _buildLegendIndicator(Colors.lightBlueAccent, "Paid"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> _buildPieChartSections() {
    return [
      PieChartSectionData(
        color: Colors.blue,
        value: 78,
        title: '78%',
        radius: 60,
        titleStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        titlePositionPercentageOffset: 0.6,
      ),
      PieChartSectionData(
        color: Colors.lightBlueAccent,
        value: 22,
        title: '22%',
        radius: 60,
        titleStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        titlePositionPercentageOffset: 0.6,
      ),
    ];
  }

  Widget _buildLegendIndicator(Color color, String text) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

// Custom Clipper for Lightly Rounded Triangle
class LightRoundedTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    double lightCornerRadius = 3; // Small radius for a subtle curve

    // Starting at the top center
    path.moveTo(size.width / 2, lightCornerRadius);

    // Top-right corner with a light curve
    path.quadraticBezierTo(size.width, lightCornerRadius,
        size.width - lightCornerRadius, size.height - lightCornerRadius);

    // Bottom center with a light curve
    path.quadraticBezierTo(size.width / 2, size.height, lightCornerRadius,
        size.height - lightCornerRadius);

    // Top-left corner with a light curve
    path.quadraticBezierTo(
        0, lightCornerRadius, size.width / 2, lightCornerRadius);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
