import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Barbikan"),
        actions: [
          IconButton(
            icon: const Badge(
              child: Icon(Icons.notifications),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16), // Spacer

            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0),
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xffD5ECFF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Icon on the left
                          Icon(
                            Icons.people,
                            size: 30,
                            color: Colors.blue,
                          ),

                          Text(
                            'Total Customers',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Text(
                        '1036', // Replace with dynamic value if needed
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(top: 12, right: 5),
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xffD5ECFF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/rectangle.png'),
                          const Text(
                            'Total Areas', // Replace with dynamic value if needed
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(width: 8), // Spacer
                        ],
                      ),
                      const Text(
                        '78', // Replace with dynamic value if needed
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
