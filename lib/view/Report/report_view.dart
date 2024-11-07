import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

// ignore: depend_on_referenced_packages
class ReportView extends StatefulWidget {
  const ReportView({super.key});

  @override
  State<ReportView> createState() => _ReportViewState();
}

class _ReportViewState extends State<ReportView> {
  String? selectedPaymentMethod;
  int? _selectedRadio = 1;

  // Function to handle changes to the radio button
  void _handleRadioValueChange(int? value) {
    setState(() {
      _selectedRadio = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text(
          "Reports",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 10,
        ),
        children: [
          SizedBox(
            // width: double.infinity,
            // height: 250,
            child: Row(
              children: [
                SizedBox(
                  width: 254.56,
                  height: 254.56,
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
                const SizedBox(
                  height: 140,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListTile(
                        title: const Text('UnPaid'),
                        leading: Radio<int>(
                          activeColor: const Color(0xff0080E9),
                          value: 1,
                          groupValue: _selectedRadio,
                          onChanged: _handleRadioValueChange,
                        ),
                      ),
                      ListTile(
                        title: const Text('Paid'),
                        leading: Radio<int>(
                          activeColor: const Color(0xff0080E9),
                          value: 2,
                          groupValue: _selectedRadio,
                          onChanged: _handleRadioValueChange,
                        ),
                      ),
                    ],
                  ),
                ),

                // ListTile for 'Paid'
              ],
            ),
          ),
          Row(
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
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffEEEEEE),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: const Row(
                  children: [
                    Text(
                      "Pandiannagar",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down_rounded)
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
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
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: ListView.builder(
                itemCount: 04,
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 70,
                    width: 390,
                    margin: const EdgeInsets.only(top: 10),
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 05),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff0080E9),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Surya",
                              style: TextStyle(
                                  color: Color(0xff000000), fontSize: 16),
                            ),
                            const Spacer(),
                            SizedBox(
                                height: 30,
                                child: Image.asset("assets/google-pay.png"))
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              "Box no :0002",
                              style: TextStyle(
                                  color: Color(0xff5B5B5B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            Text(
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
                }),
          )
        ],
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
}
