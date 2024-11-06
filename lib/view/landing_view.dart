import 'package:flutter/material.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  int _selectedIndex = 0;
  bool _showTitle = false; // Controls the visibility of the AppBar title

  final List<Widget> _pages = [
    const Center(child: Text('Dashboard')),
    const Center(child: Text('Customer')),
    const Center(child: Text('Plans')),
    const Center(child: Text('Collections')),
    const Center(child: Text('Reports')),
  ];

  final List<String> _titles = [
    'Dashboard',
    'Customer',
    'Plans',
    'Collections',
    'Reports',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _showTitle = true; // Show the title when an icon is tapped
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _showTitle
            ? Text(_titles[_selectedIndex])
            : const Text(''), // Show title only if _showTitle is true
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Customer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Plans',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Collections',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Reports',
          ),
        ],
      ),
    );
  }
}
