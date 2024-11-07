import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
class ReportView extends StatefulWidget {
  const ReportView({super.key});

  @override
  State<ReportView> createState() => _ReportViewState();
}

class _ReportViewState extends State<ReportView> {
  String? _selectedPaymentMethod;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        title: Text(
          "Reports",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          // Row(
          //   children: [
          //     Container(),
          //     Column(
          //       children: [
          //         RadioListTile<String>(
          //           title: Text('Unpaid'),
          //           value: 'unpaid',
          //           groupValue: _selectedPaymentMethod,
          //           onChanged: (value) {
          //             setState(() {
          //               _selectedPaymentMethod = value;
          //             });
          //           },
          //         ),
          //         RadioListTile<String>(
          //           title: Text('Paid'),
          //           value: 'Paid',
          //           groupValue: _selectedPaymentMethod,
          //           onChanged: (value) {
          //             setState(() {
          //               _selectedPaymentMethod = value;
          //             });
          //           },
          //         ),
          //       ],
          //     )
          //   ],
          // ),

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
          // Container(
          //   padding: const EdgeInsets.all(30),
          //   height: 111,
          //   width: 390,
          //   decoration: const BoxDecoration(
          //       gradient: LinearGradient(
          //           colors: [Color(0xff0080E9), Color(0xffA6D7FF)]),
          //       borderRadius: BorderRadius.all(Radius.circular(10))),
          //   child: const Row(
          //     children: [
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             "Total Collection",
          //             style: TextStyle(
          //                 color: Color(0xffFFFFFF),
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.w500),
          //           ),
          //           Text(
          //             "Amount",
          //             style: TextStyle(
          //                 color: Color(0xffFFFFFF),
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.w500),
          //           ),
          //         ],
          //       ),
          //       Spacer(),
          //       Text(
          //         "₹ 43, 988",
          //         style: TextStyle(
          //             color: Color(0xffFFFFFF),
          //             fontSize: 24,
          //             fontWeight: FontWeight.w600),
          //       )
          //     ],
          //   ),
          // ),
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
                            const Text(
                              "Box no :0002",
                              style: TextStyle(
                                  color: Color(0xff5B5B5B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            const Spacer(),
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
}
