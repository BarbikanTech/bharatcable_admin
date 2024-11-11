import 'package:bharatcable_admin/view/area/areacreation_view.dart';
import 'package:bharatcable_admin/view/landing_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ArealistView extends StatefulWidget {
  const ArealistView({super.key});

  @override
  State<ArealistView> createState() => _AreaListViewState();
}

class _AreaListViewState extends State<ArealistView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
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
            title: const Text(
              "Area List",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            centerTitle: false,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
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
                      builder: (context) => const AreacreationView(),
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
                    onEditingComplete: () {},
                    decoration: InputDecoration(
                      hintText: "Search",
                      filled: true,
                      fillColor: Colors.white70,
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xff78C2FF),
                    ),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.filter_list,
                      color: Color(0xff1190F9),
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
                        color: Colors.white,
                      ),
                      child: const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pandiyan Nagar",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(children: [
                            Icon(Icons.drive_file_rename_outline,
                                color: Color(0xff000000)),
                            SizedBox(width: 8),
                            Icon(Icons.delete, color: Colors.red),
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
