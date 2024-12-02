import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../themeprovider_view.dart';

class CustomerView extends StatefulWidget {
  const CustomerView({super.key});

  @override
  State<CustomerView> createState() => _CustomerViewState();
}

class _CustomerViewState extends State<CustomerView> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: themeProvider.themeMode == ThemeMode.light
          ? const Color(0xffFFFFFF)
          : const Color(0xff545454),
      appBar: AppBar(
        title: const Text('Customer Details'),
        backgroundColor: const Color(0xffFFFFFF),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: themeProvider.themeMode == ThemeMode.light
                  ? const Color(0xffFFFFFF)
                  : const Color(0xff2B2B2B),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: themeProvider.themeMode == ThemeMode.light
                    ? const Color(0xff2B2B2B)
                    : const Color(0xffFFFFFF),
              ),
            ),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Customer Name:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Surya'),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Area:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Pandiyan Nagar,'),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Phone Number:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('9876543210'),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Address:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('1-256, Main Street, City'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text("Box & Plans"),
          SizedBox(
            height: 80,
            child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              primary: false,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 120,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: themeProvider.themeMode == ThemeMode.light
                        ? const Color(0xffFFFFFF)
                        : const Color(0xff2B2B2B),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: themeProvider.themeMode == ThemeMode.light
                          ? const Color(0xff545454)
                          : const Color(0xffFFFFFF),
                    ),
                  ),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          Text("Box:"),
                          Text("0001"),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text("Plan:"),
                          Text("Plan 1"),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          const Text("Payment History"),
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: themeProvider.themeMode == ThemeMode.light
                      ? const Color(0xffFFFFFF)
                      : const Color(0xff2B2B2B),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Last month",
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Pending",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                color:
                                    themeProvider.themeMode == ThemeMode.light
                                        ? Colors.black
                                        : Colors.white),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Payment by G-pay",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                                color:
                                    themeProvider.themeMode == ThemeMode.light
                                        ? Colors.black
                                        : Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
