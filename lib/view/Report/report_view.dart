import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';

import '../../themeprovider_view.dart';

class ReportView extends StatefulWidget {
  const ReportView({super.key});

  @override
  State<ReportView> createState() => _ReportViewState();
}

class _ReportViewState extends State<ReportView> {
  int? _selectedRadio = 1;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _selectedRadio = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: themeProvider.themeMode == ThemeMode.light
          ? const Color(0xffFFFFFF)
          : const Color(0xff545454),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40), // Adjust the height of AppBar
        child: Container(
          decoration: BoxDecoration(
            color: themeProvider.themeMode == ThemeMode.light
                ? const Color(0xffFFFFFF)
                : const Color(
                    0xff2B2B2B), // AppBar background color// AppBar // AppBar background color
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.1),
                offset: const Offset(0, 10),
                blurRadius: 8,
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: themeProvider.themeMode == ThemeMode.light
                ? const Color(0xffFFFFFF)
                : const Color(0xff545454),
            title: const Text(
              "Reports",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            centerTitle: false,

            leading: const SizedBox(),
            leadingWidth: 10,
            // Make the AppBar background transparent
            elevation: 0,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
          bottom: 10,
        ),
        children: [
          SizedBox(
            width: double.infinity,
            height: 250,
            child: Row(
              children: [
                SizedBox(
                  width: 225.56,
                  height: 225.56,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: PieChart(
                      PieChartData(
                        sectionsSpace: 4,
                        centerSpaceRadius: 0,
                        sections: _buildPieChartSections(themeProvider),
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
                          const Text('Unpaid'),
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
                      Row(
                        children: [
                          Radio<int>(
                            activeColor: const Color(0xff0080E9),
                            value: 3,
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

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffEEEEEE),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    children: [
                      Text(
                        "Agent 1",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_down_rounded)
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffEEEEEE),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    children: [
                      Text(
                        "Pandiannagar",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_down_rounded)
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              child: Row(
                children: [
                  Text(
                    "Customer History",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Icon(Icons.filter_list, color: Color(0xff0080E9))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // ListView should be wrapped in an Expanded or Flexible widget
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: ListView.builder(
                itemCount: 4,
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 70,
                    width: 390,
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: themeProvider.themeMode == ThemeMode.light
                            ? const Color(0xff0080E9)
                            : Colors.white, // AppBar background color
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Surya",
                              style: TextStyle(
                                  color:
                                      themeProvider.themeMode == ThemeMode.light
                                          ? Colors.black
                                          : Colors.white,
                                  fontSize: 16),
                            ),
                            const Spacer(),
                            SizedBox(
                                height: 30,
                                child: Image.asset("assets/google-pay.png"))
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Box no :0002",
                              style: TextStyle(
                                  color:
                                      themeProvider.themeMode == ThemeMode.light
                                          ? Colors.black
                                          : Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            const Spacer(),
                            const Text(
                              "₹ 210",
                              style: TextStyle(
                                  color: Color(0xff0080E9),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  List<PieChartSectionData> _buildPieChartSections(
      ThemeProvider themeProvider) {
    // Determine colors based on the theme mode
    final backgroundColor = themeProvider.themeMode == ThemeMode.light
        ? const Color(0xffFFFFFF) // Light mode background color
        : const Color(0xff2B2B2B); // Dark mode background color

    final titleColor = themeProvider.themeMode == ThemeMode.light
        ? const Color(0xff0080E9) // Light mode title color
        : Colors.white; // Dark mode title color

    return [
      PieChartSectionData(
        color: backgroundColor,
        value: 70,
        title: '70%',
        radius: 70,
        titleStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: titleColor,
        ),
        titlePositionPercentageOffset: 0.4,
        borderSide: BorderSide(color: titleColor),
      ),
      PieChartSectionData(
        color: const Color(0xff0080E9),
        value: 15,
        title: '15%',
        radius: 70,
        titleStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        titlePositionPercentageOffset: 0.6,
      ),
      PieChartSectionData(
        color: const Color(0xff0080E9),
        value: 15,
        title: '15%',
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
}
