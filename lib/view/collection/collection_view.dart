import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../../themeprovider_view.dart';

class CollectionView extends StatefulWidget {
  const CollectionView({super.key});

  @override
  State<CollectionView> createState() => _CollectionViewState();
}

class _CollectionViewState extends State<CollectionView> {
  TextEditingController search = TextEditingController();
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
                    0xff2B2B2B), // AppBar background color// AppBar background color
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.1),
                offset: const Offset(0, 5),
                blurRadius: 5,
              ),
            ],
          ),
          child: AppBar(
            title: const Text(
              "Collections",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            centerTitle: false,
            leading: const SizedBox(),
            leadingWidth: 10,
            backgroundColor:
                Colors.transparent, // Make the AppBar background transparent
            elevation: 0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: search,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: themeProvider.themeMode == ThemeMode.light
                      ? Colors.grey.shade100
                      : const Color(0xff434343),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      fontSize: 18,
                      color: themeProvider.themeMode == ThemeMode.light
                          ? Colors.black
                          : Colors.white),
                  prefixIcon: Icon(Iconsax.search_normal,
                      size: 20,
                      color: themeProvider.themeMode == ThemeMode.light
                          ? Colors.black
                          : Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(
                height: 20,
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
                    child: Row(
                      children: [
                        Text(
                          "Agent 1",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: themeProvider.themeMode == ThemeMode.light
                                  ? Colors.black
                                  : Colors.white),
                        ),
                        const Spacer(),
                        Icon(Icons.keyboard_arrow_down,
                            color: themeProvider.themeMode == ThemeMode.light
                                ? Colors.black
                                : Colors.white)
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
                    child: Row(
                      children: [
                        Text(
                          "Pandiannagar",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: themeProvider.themeMode == ThemeMode.light
                                  ? Colors.black
                                  : Colors.white),
                        ),
                        const Spacer(),
                        Icon(Icons.keyboard_arrow_down,
                            color: themeProvider.themeMode == ThemeMode.light
                                ? Colors.black
                                : Colors.white)
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(30),
                height: 111,
                width: 390,
                decoration: BoxDecoration(
                    gradient: themeProvider.themeMode == ThemeMode.light
                        ? const LinearGradient(
                            colors: [Color(0xff0080E9), Color(0xffA6D7FF)],
                          )
                        : const LinearGradient(
                            colors: [Color(0xff006fca), Color(0xff002c51)],
                          ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total Collection"),
                        Text("Amount"),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      "₹ 43, 988",
                      style: TextStyle(
                          color: themeProvider.themeMode == ThemeMode.light
                              ? Colors.black
                              : Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Row(
                  children: [
                    Text(
                      "Customer List",
                      style: TextStyle(
                          color: themeProvider.themeMode == ThemeMode.light
                              ? Colors.black
                              : Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    const Icon(Icons.filter_list, color: Color(0xff0080E9))
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
                              color: themeProvider.themeMode == ThemeMode.light
                                  ? const Color(0xff0080E9)
                                  : Colors.white, // AppBar background color
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Surya",
                                  style: TextStyle(
                                      color: themeProvider.themeMode ==
                                              ThemeMode.light
                                          ? Colors.black
                                          : Colors.white,
                                      fontSize: 16),
                                ),
                                const Spacer(),
                                SizedBox(
                                    height: 30,
                                    child: Image.asset("assets/google-pay.png",
                                        color: themeProvider.themeMode ==
                                                ThemeMode.light
                                            ? Colors.black
                                            : Colors.white))
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "Box no :0002",
                                  style: TextStyle(
                                      color: themeProvider.themeMode ==
                                              ThemeMode.light
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
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
