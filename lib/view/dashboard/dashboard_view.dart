import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  TextEditingController _searchController = TextEditingController();
  String selectedPeriod = 'Monthly';
  String selectedStatus = 'Unpaid';
  int? _selectedRadio = 1;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _selectedRadio = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40), // Adjust the height of AppBar
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, // AppBar background color
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0, 4),
                blurRadius: 8,
              ),
            ],
          ),
          child: AppBar(
            title: Image.asset(
              'assets/logo.png', // Replace with your image asset path
              height: 30, // Adjust size as needed
            ),
            centerTitle: false,
            leading: SizedBox(),
            leadingWidth: 10,
            backgroundColor:
                Colors.transparent, // Make the AppBar background transparent
            elevation: 0,
            actions: [
              IconButton(
                icon: const Badge(
                  child: Icon(Icons.notifications),
                ),
                onPressed: () {},
              ),
            ], // Remove default AppBar shadow
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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

              Container(
                padding: const EdgeInsets.all(10),
                height: 300,
                width: 390,
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text("Collection Amount"),
                        Spacer(),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10, right: 05, top: 05, bottom: 05),
                          height: 30,
                          width: 101,
                          decoration: BoxDecoration(color: Color(0xffFFFFFF)),
                          child: const Row(
                            children: [
                              const Text("Monthly"),
                              Spacer(),
                              Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: Row(
                        children: [
                          Container(
                            width: 200.56,
                            height: 200.56,
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: PieChart(
                                PieChartData(
                                  sectionsSpace: 4,
                                  centerSpaceRadius: 0,
                                  sections: _buildPieChartSections(),
                                ),
                              ),
                            ),
                          ),
                          // Wrap the Column in an Expanded widget to avoid overflow errors
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Radio<int>(
                                      activeColor: const Color(0xff0080E9),
                                      value: 1,
                                      groupValue: _selectedRadio,
                                      onChanged: _handleRadioValueChange,
                                    ),
                                    const Text('UnPaid'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio<int>(
                                      activeColor: const Color(0xff0080E9),
                                      value: 2,
                                      groupValue: _selectedRadio,
                                      onChanged: _handleRadioValueChange,
                                    ),
                                    const Text('Paid'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Container(
              //   padding: const EdgeInsets.all(16.0),
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(8.0),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.3),
              //         spreadRadius: 2,
              //         blurRadius: 5,
              //         offset: const Offset(0, 3),
              //       ),
              //     ],
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           const Text(
              //             "Collection Amount",
              //             style: TextStyle(
              //               fontSize: 18,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //           DropdownButton<String>(
              //             value: selectedPeriod,
              //             items: <String>['Monthly', 'Weekly', 'Yearly']
              //                 .map((String value) {
              //               return DropdownMenuItem<String>(
              //                 value: value,
              //                 child: Text(value),
              //               );
              //             }).toList(),
              //             onChanged: (String? newValue) {
              //               setState(() {
              //                 selectedPeriod = newValue!;
              //               });
              //             },
              //           ),
              //         ],
              //       ),
              //       const SizedBox(height: 20),
              //       Row(
              //         children: [
              //           Container(
              //             width: 225.56,
              //             height: 225.56,
              //             child: AspectRatio(
              //               aspectRatio: 1,
              //               child: PieChart(
              //                 PieChartData(
              //                   sectionsSpace: 4,
              //                   centerSpaceRadius: 0,
              //                   sections: _buildPieChartSections(),
              //                 ),
              //               ),
              //             ),
              //           ),
              //           Expanded(
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               crossAxisAlignment: CrossAxisAlignment.center,
              //               children: [
              //                 Row(
              //                   children: [
              //                     Radio<int>(
              //                       activeColor: const Color(0xff0080E9),
              //                       value: 1,
              //                       groupValue: _selectedRadio,
              //                       onChanged: _handleRadioValueChange,
              //                     ),
              //                     const Text('UnPaid'),
              //                   ],
              //                 ),
              //                 Row(
              //                   children: [
              //                     Radio<int>(
              //                       activeColor: const Color(0xff0080E9),
              //                       value: 2,
              //                       groupValue: _selectedRadio,
              //                       onChanged: _handleRadioValueChange,
              //                     ),
              //                     const Text('Paid'),
              //                   ],
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),

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
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(image: AssetImage("assets/money.png")),
                    ),
                    SizedBox(width: 5),
                    Text("Pending Amount"),
                    SizedBox(width: 110),
                    Text(
                      " ₹6,455",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: const Color(0xffD5ECFF),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(image: AssetImage("assets/money.png")),
                    ),
                    SizedBox(width: 5),
                    Text("Collected Amount"),
                    SizedBox(width: 100),
                    Text(
                      " ₹6,455",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> _buildPieChartSections() {
    return [
      PieChartSectionData(
          color: const Color(0xffFFFFFF),
          value: 78,
          title: '78%',
          radius: 70,
          titleStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xff0080E9),
          ),
          titlePositionPercentageOffset: 0.4,
          borderSide: const BorderSide(color: Color(0xff0080E9))),
      PieChartSectionData(
        color: const Color(0xff0080E9),
        value: 22,
        title: '22%',
        radius: 70,
        titleStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        titlePositionPercentageOffset: 0.6,
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
