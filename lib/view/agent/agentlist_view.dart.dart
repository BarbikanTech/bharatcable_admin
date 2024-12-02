import 'package:bharatcable_admin/view/agent/agentcreation_view.dart';
import 'package:bharatcable_admin/view/landing_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../../themeprovider_view.dart';

class AgentlistView extends StatefulWidget {
  const AgentlistView({super.key});

  @override
  State<AgentlistView> createState() => _AgentListViewState();
}

class _AgentListViewState extends State<AgentlistView> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: themeProvider.themeMode == ThemeMode.light
          ? const Color(0xffFFFFFF)
          : Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Container(
          decoration: BoxDecoration(
            color: themeProvider.themeMode == ThemeMode.light
                ? const Color(0xffFFFFFF)
                : Colors.black,
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
            title: Text(
              "Agent List",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: themeProvider.themeMode == ThemeMode.light
                    ? Colors.black
                    : Colors.white,
              ),
            ),
            centerTitle: false,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: themeProvider.themeMode == ThemeMode.light
                    ? Colors.black
                    : Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LandingView(),
                  ),
                );
              },
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AgentcreationView(),
                    ),
                  );
                },
                child: Container(
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
                        : const Color(0xff2B2B2B),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: themeProvider.themeMode == ThemeMode.light
                          ? const Color(0xff1190F9)
                          : const Color(0xff2B2B2B),
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.filter_list,
                      color: themeProvider.themeMode == ThemeMode.light
                          ? const Color(0xff1190F9)
                          : const Color(0xff1190F9),
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const CustomerView(),
                      //   ),
                      // );
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
                                0xff2B2B2B), // AppBar background color
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
                                "Pandiyan Nagar",
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
                          Row(children: [
                            Icon(
                              Icons.drive_file_rename_outline_outlined,
                              color: themeProvider.themeMode == ThemeMode.light
                                  ? Colors.black
                                  : Colors.white,
                            ),
                            const SizedBox(width: 8),
                            const Icon(Icons.delete, color: Colors.red),
                          ]),
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
