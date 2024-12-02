import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../themeprovider_view.dart';

class PlanListView extends StatefulWidget {
  const PlanListView({super.key});

  @override
  State<PlanListView> createState() => _PlanListViewState();
}

class _PlanListViewState extends State<PlanListView> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: themeProvider.themeMode == ThemeMode.light
          ? const Color(0xffFFFFFF)
          : const Color(0xff545454),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Container(
          decoration: BoxDecoration(
            color: themeProvider.themeMode == ThemeMode.light
                ? const Color(0xff2B2B2B)
                : Colors.white, // AppBar background col
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, 4),
                blurRadius: 8,
              ),
            ],
          ),
          child: AppBar(
            title: Text(
              "Plan List",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Poppins",
                color: themeProvider.themeMode == ThemeMode.light
                    ? const Color(0xff2B2B2B)
                    : Colors.white, // AppBar background color
              ),
            ),
            leading: const SizedBox(),
            leadingWidth: 10,
            actions: [
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(
                          "Add Plan",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            color: themeProvider.themeMode == ThemeMode.light
                                ? const Color(0xff2B2B2B)
                                : Colors.black, // AppBar background color
                          ),
                        ),
                        content: Container(
                          constraints: const BoxConstraints(maxHeight: 270),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  color: themeProvider.themeMode ==
                                          ThemeMode.light
                                      ? const Color(0xff2B2B2B)
                                      : Colors.white, // AppBar background color
                                ),
                              ),
                              const SizedBox(height: 5),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Basic",
                                  filled: true,
                                  fillColor:
                                      themeProvider.themeMode == ThemeMode.light
                                          ? Colors.grey.shade100
                                          : Colors.black,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: themeProvider.themeMode ==
                                              ThemeMode.light
                                          ? const Color(0xff2B2B2B)
                                          : Colors
                                              .white, // AppBar background color
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: themeProvider.themeMode ==
                                              ThemeMode.light
                                          ? const Color(0xff2B2B2B)
                                          : Colors
                                              .white, // AppBar background color
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "Price",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 5),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "156",
                                  filled: true,
                                  fillColor:
                                      themeProvider.themeMode == ThemeMode.light
                                          ? Colors.grey.shade100
                                          : Colors.black,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: themeProvider.themeMode ==
                                              ThemeMode.light
                                          ? const Color(0xff2B2B2B)
                                          : Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: themeProvider.themeMode ==
                                              ThemeMode.light
                                          ? const Color(0xff2B2B2B)
                                          : Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff0080E9),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                  ),
                                  onPressed: () {
                                    // Add submit action
                                  },
                                  child: const Text(
                                    "Submit",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    children: [
                      Icon(Icons.add, color: Color(0xff0080E9)),
                      SizedBox(width: 4),
                      Text(
                        "ADD",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          color: Color(0xff0080E9),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: themeProvider.themeMode == ThemeMode.light
                      ? const Color(0xffFFFFFF)
                      : const Color(0xff545454), // AppBar background color
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Basic",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            color: themeProvider.themeMode == ThemeMode.light
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              color: themeProvider.themeMode == ThemeMode.light
                                  ? Colors.black
                                  : Colors.white,
                              size: 14,
                            ),
                            Text(
                              "156",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                                color:
                                    themeProvider.themeMode == ThemeMode.light
                                        ? Colors.black
                                        : Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(children: [
                    Icon(Icons.drive_file_rename_outline,
                        color: themeProvider.themeMode == ThemeMode.light
                            ? Colors.black
                            : Colors.white),
                    const SizedBox(width: 8),
                    const Icon(Icons.delete, color: Colors.red),
                  ]),
                ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
