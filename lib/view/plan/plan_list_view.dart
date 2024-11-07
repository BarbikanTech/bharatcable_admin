// import 'package:flutter/material.dart';

// class PlanListView extends StatefulWidget {
//   const PlanListView({super.key});

//   @override
//   State<PlanListView> createState() => _PlanListViewState();
// }

// class _PlanListViewState extends State<PlanListView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Plan list",
//           style: TextStyle(
//             fontSize: 16,
//             fontFamily: "Poppins",
//             color: Color(
//               0xff000000,
//             ),
//           ),
//         ),
//         actions: [
//           GestureDetector(
//             onTap: () {
//               showDialog(
//                 context: context,
//                 builder: (context) {
//                   return AlertDialog(
//                     title: const Text(
//                       "Add Plan",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontFamily: "Poppins",
//                       ),
//                     ),
//                     content: Container(
//                       constraints: const BoxConstraints(maxHeight: 250),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         // mainAxisSize: MainAxisSize.min,
//                         children: [
//                           const Text(
//                             "Name",
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontFamily: "Poppins",
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               hintText: "Basic",
//                               filled: true,
//                               fillColor: Colors.grey.shade200,
//                               enabledBorder: OutlineInputBorder(
//                                 borderSide: const BorderSide(
//                                   color: Color(0xffF5F5F5),
//                                 ),
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                           ),
//                           const Text(
//                             "Price",
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontFamily: "Poppins",
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               hintText: "156",
//                               filled: true,
//                               fillColor: Colors.grey.shade200,
//                               enabledBorder: OutlineInputBorder(
//                                 borderSide: const BorderSide(
//                                   color: Color(0xffF5F5F5),
//                                 ),
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           Container(
//                             height: 50,
//                             width: 338.29,
//                             decoration: const BoxDecoration(
//                               color: Color(0xff0080E9),
//                             ),
//                             child: Center(
//                               child: TextButton(
//                                   onPressed: () {},
//                                   child: const Text(
//                                     "Submit",
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       fontFamily: "Poppins",
//                                       fontWeight: FontWeight.w500,
//                                       color: Color(0xffFFFFFF),
//                                     ),
//                                   )),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   );
//                 },
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
//             margin: const EdgeInsets.only(left: 15, top: 30, right: 15),
//             height: 100,
//             width: 100,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: const Color(0xffFFFFFF),
//               border: Border.all(
//                 color: const Color(0xFF6D6D6D),
//               ),
//             ),
//             child: const Padding(
//               padding: EdgeInsets.all(10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Basic",
//                     style: TextStyle(
//                         fontSize: 14,
//                         fontFamily: "Poppins",
//                         fontWeight: FontWeight.w500),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Icon(Icons.edit),
//                       Icon(
//                         Icons.delete,
//                         color: Colors.red,
//                       ),
//                     ],
//                   ),
//                   Text(
//                     "156",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                       fontFamily: "Poppins",
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class PlanListView extends StatefulWidget {
  const PlanListView({super.key});

  @override
  State<PlanListView> createState() => _PlanListViewState();
}

class _PlanListViewState extends State<PlanListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Plan List",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Poppins",
            color: Colors.black,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text(
                      "Add Plan",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins",
                      ),
                    ),
                    content: Container(
                      constraints: const BoxConstraints(maxHeight: 250),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Name",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Basic",
                              filled: true,
                              fillColor: Colors.grey.shade200,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xffF5F5F5),
                                ),
                                borderRadius: BorderRadius.circular(10),
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
                              fillColor: Colors.grey.shade200,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xffF5F5F5),
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
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
              child: Row(
                children: const [
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
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Basic",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Price: 156",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Add edit action
                      },
                      icon: const Icon(Icons.edit, color: Colors.blue),
                    ),
                    IconButton(
                      onPressed: () {
                        // Add delete action
                      },
                      icon: const Icon(Icons.delete, color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
