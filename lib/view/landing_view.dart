import 'package:bharatcable_admin/view/collection/collection_view.dart';
import 'package:bharatcable_admin/view/dashboard/dashboard_view.dart';
import 'package:flutter/material.dart';

import 'Report/report_view.dart';

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
    ReportView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 700),
        child: _pages[_selectedIndex],
      ),
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
