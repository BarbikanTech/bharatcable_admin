// import 'package:flutter/material.dart';

// class CustomerCreateView extends StatefulWidget {
//   const CustomerCreateView({super.key});

//   @override
//   State<CustomerCreateView> createState() => _CustomerCreateViewState();
// }

// class _CustomerCreateViewState extends State<CustomerCreateView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Add Customer"),
//       ),
//       body: ListView(
//         children: [
//           SizedBox(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   " Name",
//                   style: Theme.of(context)
//                       .textTheme
//                       .labelLarge!
//                       .copyWith(color: Colors.black54),
//                 ),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 TextFormField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                     hintText: "Name",
//                     filled: true,
//                     fillColor: Colors.grey.shade200,
//                     // prefixIcon: const Icon(Iconsax.p),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.grey.shade300,
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.grey.shade300,
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         // color: Color(0xff2F4550),
//                         color: Theme.of(context).primaryColor,
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 15),
//           SizedBox(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   "Address",
//                   style: Theme.of(context)
//                       .textTheme
//                       .labelLarge!
//                       .copyWith(color: Colors.black54),
//                 ),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 TextFormField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                     hintText: "Address",
//                     filled: true,
//                     fillColor: Colors.grey.shade200,
//                     // prefixIcon: const Icon(Iconsax.p),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.grey.shade300,
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.grey.shade300,
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         // color: Color(0xff2F4550),
//                         color: Theme.of(context).primaryColor,
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 15),
//           SizedBox(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   "Phone Number",
//                   style: Theme.of(context)
//                       .textTheme
//                       .labelLarge!
//                       .copyWith(color: Colors.black54),
//                 ),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 TextFormField(
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                     hintText: "Phone Number",
//                     filled: true,
//                     fillColor: Colors.grey.shade200,
//                     // prefixIcon: const Icon(Iconsax.p),
//                     enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.grey.shade300,
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.grey.shade300,
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         // color: Color(0xff2F4550),
//                         color: Theme.of(context).primaryColor,
//                       ),
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 margin: const EdgeInsets.all(10),
//                 height: 150,
//                 width: 150,
//                 color: Colors.white,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.all(10),
//                       padding: const EdgeInsets.all(10),
//                       height: 50,
//                       width: double.infinity,
//                       color: Colors.white,
//                       child: const Text(
//                         "Box NO",
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 10),
//                     Container(
//                       margin: const EdgeInsets.all(10),
//                       padding: const EdgeInsets.all(10),
//                       height: 50,
//                       width: double.infinity,
//                       color: Colors.white,
//                       child: const Text("Choose Plan"),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 margin: const EdgeInsets.all(10),
//                 padding: const EdgeInsets.all(8),
//                 height: 150,
//                 width: 150,
//                 decoration: const BoxDecoration(
//                   color: Colors.grey,
//                 ),
//                 child: Container(
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.add, color: Colors.white),
//                       SizedBox(width: 4),
//                       Text(
//                         "Box NO",
//                         style: TextStyle(
//                           fontSize: 14,
//                           fontFamily: "Poppins",
//                           fontWeight: FontWeight.w500,
//                           color: Color(0xff0080E9),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
//           Container(
//             padding: const EdgeInsets.all(10),
//             margin: EdgeInsets.all(10),
//             height: 50,
//             width: 50,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: TextButton(
//               onPressed: () {},
//               child: const Text("Submit"),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CustomerCreateView extends StatefulWidget {
  const CustomerCreateView({super.key});

  @override
  State<CustomerCreateView> createState() => _CustomerCreateViewState();
}

class _CustomerCreateViewState extends State<CustomerCreateView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Customer"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            _buildTextField(
              context,
              label: "Name",
              hintText: "Enter Name",
            ),
            const SizedBox(height: 15),
            _buildTextField(
              context,
              label: "Address",
              hintText: "Enter Address",
            ),
            const SizedBox(height: 15),
            _buildTextField(
              context,
              label: "Phone Number",
              hintText: "Enter Phone Number",
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildInfoBox("Box No", "Choose Plan"),
                _buildAddBox(),
              ],
            ),
            const SizedBox(height: 30),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your submit functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text("Submit"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(BuildContext context,
      {required String label,
      required String hintText,
      TextInputType keyboardType = TextInputType.text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(color: Colors.black54),
        ),
        const SizedBox(height: 8),
        TextFormField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: Colors.grey.shade200,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoBox(String title, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(subtitle, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _buildAddBox() {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.add, color: Colors.white),
            const SizedBox(width: 4),
            Text(
              "Box No",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                color: Colors.blue.shade800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
