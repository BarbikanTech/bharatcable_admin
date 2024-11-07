// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

// class DashboardView extends StatefulWidget {
//   const DashboardView({super.key});

//   @override
//   State<DashboardView> createState() => _DashboardViewState();
// }

// class _DashboardViewState extends State<DashboardView> {
//   TextEditingController _searchController = TextEditingController();
//   String selectedPeriod = 'Monthly';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Barbikan"),
//         actions: [
//           IconButton(
//             icon: const Badge(
//               child: Icon(Icons.notifications),
//             ),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Search Bar
//             TextField(
//               controller: _searchController,
//               decoration: InputDecoration(
//                 hintText: 'Search',
//                 prefixIcon: const Icon(Icons.search),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16), // Spacer

//             Row(
//               children: [
//                 Container(
//                   padding: const EdgeInsets.all(16.0),
//                   height: 80,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffD5ECFF),
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                   child: const Column(
//                     children: [
//                       Row(
//                         children: [
//                           SizedBox(
//                               height: 20,
//                               child: Image(
//                                   image: AssetImage("assets/profile.png"))),
//                           SizedBox(width: 8),
//                           Text(
//                             'Total Customers',
//                             style: TextStyle(
//                                 fontSize: 15, fontWeight: FontWeight.w600),
//                           ),
//                         ],
//                       ),
//                       Text(
//                         '1036',
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.w600),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Spacer(),
//                 Container(
//                   padding: const EdgeInsets.all(16.0),
//                   height: 80,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffD5ECFF),
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                   child: const Column(
//                     children: [
//                       Row(
//                         children: [
//                           SizedBox(
//                               height: 20,
//                               child: Image(
//                                 image: AssetImage("assets/rectangle.png"),
//                               )),
//                           // Icon(Icons.location_on, size: 20, color: Colors.blue),
//                           SizedBox(width: 8),
//                           Text(
//                             'Total Areas',
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.w600),
//                           ),
//                         ],
//                       ),
//                       Text(
//                         '78',
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.w600),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),

//             const SizedBox(height: 16),

//             // Pie Chart Container with Dropdown
//             Container(
//               padding: const EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(8.0),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.3),
//                     spreadRadius: 2,
//                     blurRadius: 5,
//                     offset: const Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text(
//                         "Collection Amount",
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       DropdownButton<String>(
//                         value: selectedPeriod,
//                         items: <String>['Monthly', 'Weekly', 'Yearly']
//                             .map((String value) {
//                           return DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(value),
//                           );
//                         }).toList(),
//                         onChanged: (String? newValue) {
//                           setState(() {
//                             selectedPeriod = newValue!;
//                           });
//                         },
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 20),

//                   // Row for Pie Chart and Indicators
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // Pie Chart
//                       SizedBox(
//                         height: 200,
//                         width: 200,
//                         child: PieChart(
//                           PieChartData(
//                             sectionsSpace: 0,
//                             centerSpaceRadius: 40,
//                             sections: showingSections(),
//                           ),
//                         ),
//                       ),
//                       // Indicators
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           buildIndicator(color: Colors.blue, text: "Unpaid"),
//                           const SizedBox(height: 10),
//                           buildIndicator(color: Colors.grey, text: "Paid"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: 70,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(3),
//                 color: const Color(0xffD5ECFF),
//               ),
//               child: const Row(
//                 children: [
//                   Image(image: AssetImage("assets/rectangle.png")),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   List<PieChartSectionData> showingSections() {
//     return [
//       PieChartSectionData(
//         color: Colors.blue,
//         value: 22,
//         title: '22%',
//         radius: 50,
//         titleStyle: const TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//         ),
//       ),
//       PieChartSectionData(
//         color: Colors.grey.shade300,
//         value: 78,
//         title: '78%',
//         radius: 50,
//         titleStyle: const TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//           color: Colors.black,
//         ),
//       ),
//     ];
//   }

//   Widget buildIndicator({required Color color, required String text}) {
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
//         const SizedBox(width: 8),
//         Text(
//           text,
//           style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  TextEditingController searchController = TextEditingController();
  String selectedPeriod = 'Monthly';
  String selectedStatus = 'Unpaid';

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
              controller: searchController,
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
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xffD5ECFF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              height: 20,
                              child: Image(
                                  image: AssetImage("assets/profile.png"))),
                          SizedBox(width: 8),
                          Text(
                            'Total Customers',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Text(
                        '1036',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xffD5ECFF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              height: 20,
                              child: Image(
                                image: AssetImage("assets/rectangle.png"),
                              )),
                          SizedBox(width: 8),
                          Text(
                            'Total Areas',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Text(
                        '78',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Pie Chart Container with Dropdown and Radio Buttons
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Collection Amount",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      DropdownButton<String>(
                        value: selectedPeriod,
                        items: <String>['Monthly', 'Weekly', 'Yearly']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedPeriod = newValue!;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Row for Pie Chart and Indicators with Radio Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pie Chart
                      SizedBox(
                        height: 160,
                        width: 160,
                        child: PieChart(
                          PieChartData(
                            sectionsSpace: 0,
                            centerSpaceRadius: 40,
                            sections: showingSections(),
                          ),
                        ),
                      ),
                      // Indicators with Radio Buttons
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildRadioIndicator(
                              color: Colors.blue,
                              text: "Unpaid",
                              value: "Unpaid"),
                          const SizedBox(height: 2),
                          buildRadioIndicator(
                              color: Colors.grey, text: "Paid", value: "Paid"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: const Color(0xffD5ECFF),
              ),
              child: const Row(
                children: [
                  Image(image: AssetImage("assets/rectangle.png")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return [
      PieChartSectionData(
        color: Colors.blue,
        value: 22,
        title: '22%',
        radius: 50,
        titleStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      PieChartSectionData(
        color: Colors.grey.shade300,
        value: 78,
        title: '78%',
        radius: 50,
        titleStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ];
  }

  Widget buildRadioIndicator(
      {required Color color, required String text, required String value}) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: selectedStatus,
          onChanged: (String? newValue) {
            setState(() {
              selectedStatus = newValue!;
            });
          },
          activeColor: Colors.blue,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: value == selectedStatus ? Colors.blue : Colors.black),
        ),
      ],
    );
  }
}
