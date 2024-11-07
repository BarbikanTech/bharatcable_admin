// import 'package:flutter/material.dart';

// import 'customer_create_view.dart';

// class CustomerListView extends StatefulWidget {
//   const CustomerListView({super.key});

//   @override
//   State<CustomerListView> createState() => _CustomerListViewState();
// }

// class _CustomerListViewState extends State<CustomerListView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Customer List"),
//         actions: [
//           GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const CustomerCreateView(),
//                 ),
//               );
//             },
//             child: Container(
//               padding: const EdgeInsets.all(10),
//               child: const Row(
//                 children: [
//                   Icon(Icons.add),
//                   Text(
//                     "ADD",
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontFamily: "Poppins",
//                       color: Color(0xff0080E9),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: ListView(
//         children: [
//           Container(
//             height: 50,
//             width: 60,
//             margin: const EdgeInsets.all(10),
//             child: TextFormField(
//               keyboardType: TextInputType.text,
//               textInputAction: TextInputAction.search,
//               onEditingComplete: () {
//                 //searchFn();
//               },
//               onTapOutside: (event) {
//                 FocusManager.instance.primaryFocus!.unfocus();
//               },
//               decoration: InputDecoration(
//                 hintText: "Search ",
//                 filled: true,
//                 fillColor: Colors.white70,
//                 prefixIcon: const Icon(Icons.search),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.grey.shade200,
//                   ),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.grey.shade200,
//                   ),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     // color: Color(0xff2F4550),
//                     color: Theme.of(context).primaryColor,
//                   ),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//           ),
//           ListView.builder(
//             itemCount: 5,
//             primary: false,
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return Container(
//                 margin: const EdgeInsets.only(top: 10),
//                 padding: const EdgeInsets.only(left: 15, right: 15, top: 05),
//                 height: 100,
//                 width: 200,
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.grey,
//                   ),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: const Row(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "surya",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: "Poppins",
//                             fontSize: 16,
//                           ),
//                         ),
//                         Text(
//                           "Box No: 001,002",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: "Poppins",
//                             fontSize: 16,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Spacer(),
//                     Text('196'),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:bharatcable_admin/view/customer/customer_view.dart';
import 'package:flutter/material.dart';

import 'customer_create_view.dart';

class CustomerListView extends StatefulWidget {
  const CustomerListView({super.key});

  @override
  State<CustomerListView> createState() => _CustomerListViewState();
}

class _CustomerListViewState extends State<CustomerListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customer List"),
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const Row(
                children: [
                  Icon(Icons.add),
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
                      fillColor: Colors.white70,
                      prefixIcon: const Icon(Icons.search),
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
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.filter_list, color: Colors.white),
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
                        color: Colors.white,
                      ),
                      child: const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Surya",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  color: Colors.black87,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Box No: 001, 002",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.edit),
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
