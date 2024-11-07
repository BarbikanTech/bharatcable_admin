import 'package:bharatcable_admin/view/collection/collection_view.dart';
import 'package:bharatcable_admin/view/dashboard/dashboard_view.dart';
import 'package:flutter/material.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const DashboardView(),
    const Center(child: Text('Customer')),
    const Center(child: Text('Plans')),
    const CollectionView(),
    const Center(child: Text('Reports')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF0080E9),
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 0),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/firsticon.png"),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/second.png"),
            label: 'Customer',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/third.png"),
            label: 'Plans',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/fourth.png"),
            label: 'Collections',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/fifth.png"),
            label: 'Reports',
          ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

// class DashboardScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Barbikan"),
//         actions: [
//           IconButton(icon: Icon(Icons.search), onPressed: () {}),
//           IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
//         ],
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 _buildStatCard("Total Customers", "1036", Icons.people),
//                 _buildStatCard("Total Areas", "78", Icons.location_on),
//               ],
//             ),
//             SizedBox(height: 20),
//             _buildPieChart(),
//             SizedBox(height: 20),
//             _buildAmountDetails("Pending Amount", "₹6,455", Icons.pending),
//             _buildAmountDetails("Collected Amount", "₹12,605", Icons.check_circle),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Dashboard"),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
//           BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile"),
//         ],
//       ),
//     );
//   }

//   Widget _buildStatCard(String title, String value, IconData icon) {
//     return Container(
//       padding: EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         color: Colors.blue.shade50,
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: Row(
//         children: [
//           Icon(icon, color: Colors.blue),
//           SizedBox(width: 10),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(title, style: TextStyle(fontSize: 14, color: Colors.grey)),
//               Text(value, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildPieChart() {
//     return Container(
//       height: 200,
//       child: PieChart(
//         PieChartData(
//           sections: [
//             PieChartSectionData(value: 22, color: Colors.blue, title: '22%'),
//             PieChartSectionData(value: 78, color: Colors.grey, title: '78%'),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildAmountDetails(String label, String amount, IconData icon) {
//     return ListTile(
//       leading: Icon(icon, color: Colors.blue),
//       title: Text(label),
//       trailing: Text(amount, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//     );
//   }
// }
