import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:iconsax/iconsax.dart';

class Landingview extends StatefulWidget {
  const Landingview({super.key});

  @override
  State<Landingview> createState() => _LandingviewState();
}

class _LandingviewState extends State<Landingview> {
  int _selectedIndex = 0;

  List<BottomNavigationBarItem> navItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: ImageIcon(AssetImage("assets/si_projects-line.png")),
      label: 'Projects',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Iconsax.message),
      label: 'Chats',
    ),
    const BottomNavigationBarItem(
      icon: ImageIcon(AssetImage("assets/expense.png")),
      label: 'Expenses',
    ),
    const BottomNavigationBarItem(
      icon: ImageIcon(AssetImage("assets/Frame.png")),
      label: 'Salary',
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: navItems,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff0080E9),
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
