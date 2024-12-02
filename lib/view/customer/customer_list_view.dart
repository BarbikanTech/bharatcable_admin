import 'package:bharatcable_admin/view/customer/customer_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../../themeprovider_view.dart';
import 'customer_create_view.dart';

class CustomerListView extends StatefulWidget {
  const CustomerListView({super.key});

  @override
  State<CustomerListView> createState() => _CustomerListViewState();
}

class _CustomerListViewState extends State<CustomerListView> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: themeProvider.themeMode == ThemeMode.light
          ? const Color(0xffFFFFFF)
          : const Color(0xff545454),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        // Adjust the height of AppBar
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
                offset: const Offset(0, 4),
                blurRadius: 8,
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: themeProvider.themeMode == ThemeMode.light
                ? const Color(0xffFFFFFF)
                : const Color(0xff2B2B2B),
            title: const Text(
              "Customer List",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: false,
            leading: const SizedBox(),
            leadingWidth: 10,
            // Make the AppBar background transparent
            elevation: 0,
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CustomerCreateView(),
                    ),
                  );
                },
                child: Container(
                  color: themeProvider.themeMode == ThemeMode.light
                      ? const Color(0xffFFFFFF)
                      : const Color(0xff2B2B2B), // AppBar background color
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.search,
                    onEditingComplete: () {
                      // Implement search function if needed
                    },
                    decoration: InputDecoration(
                      hintText: "Search",
                      filled: true,
                      fillColor: themeProvider.themeMode == ThemeMode.light
                          ? Colors.grey.shade100
                          : const Color(0xff434343),
                      prefixIcon: const Icon(Iconsax.search_normal),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: themeProvider.themeMode == ThemeMode.light
                        ? const Color(0xffFFFFFF)
                        : Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: themeProvider.themeMode == ThemeMode.light
                            ? Colors.black
                            : const Color(0xffFFFFFF)),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.filter_list,
                      color: themeProvider.themeMode == ThemeMode.light
                          ? Colors.black
                          : Colors.white,
                    ),
                    onPressed: () {
                      // Implement filter functionality
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomerView(),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10),
                        color: themeProvider.themeMode == ThemeMode.light
                            ? const Color(0xffFFFFFF)
                            : const Color(
                                0xff545454), // AppBar background color
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Surya",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  color:
                                      themeProvider.themeMode == ThemeMode.light
                                          ? Colors.black
                                          : Colors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "Box No: 001, 002",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                  color:
                                      themeProvider.themeMode == ThemeMode.light
                                          ? Colors.black
                                          : Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.drive_file_rename_outline_outlined),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
