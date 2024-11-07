import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

class CollectionView extends StatefulWidget {
  const CollectionView({super.key});

  @override
  State<CollectionView> createState() => _CollectionViewState();
}

class _CollectionViewState extends State<CollectionView> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40), // Adjust the height of AppBar
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
                  fillColor: const Color(0xffF5F5F5),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  hintText: 'Search',
                  hintStyle: const TextStyle(fontSize: 18),
                  prefixIcon: const Icon(
                    Iconsax.search_normal,
                    size: 20,
                  ),
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
                    child: const Row(
                      children: [
                        Text(
                          "Agent 1",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_down)
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
                        Icon(Icons.keyboard_arrow_down)
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
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff0080E9), Color(0xffA6D7FF)]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total Collection"),
                        Text("Amount"),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "₹ 43, 988",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                child: Row(
                  children: [
                    Text(
                      "Customer List",
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
        ),
      ),
    );
  }
}
