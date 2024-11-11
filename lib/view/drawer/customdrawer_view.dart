import 'package:bharatcable_admin/view/agent/agentlist_view.dart.dart';
import 'package:bharatcable_admin/view/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../area/arealist_view.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer(
      {super.key, required void Function(String theme) onThemeChange});

  @override
  // ignore: library_private_types_in_public_api
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  String selectReason = 'Light Mode'; // Initial mode selection
  List<DropdownMenuItem<String>> reason = const [
    DropdownMenuItem(
      value: "Light Mode",
      child: Text("LightMode"),
    ),
    DropdownMenuItem(
      value: "Dark Mode",
      child: Text("DarkMode"),
    ),
    DropdownMenuItem(
      value: "System Default",
      child: Text("System Default"),
    ),
  ];

  Future<void> _showImageSourceSelection(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Camera'),
                onTap: () async {
                  Navigator.of(context).pop(); // Close the bottom sheet
                  // ignore: unused_local_variable
                  final pickedFile =
                      await ImagePicker().pickImage(source: ImageSource.camera);
                  // Handle the picked file (if needed)
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo),
                title: const Text('Gallery'),
                onTap: () async {
                  Navigator.of(context).pop(); // Close the bottom sheet
                  // ignore: unused_local_variable
                  final pickedFile = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  // Handle the picked file (if needed)
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            border: Border(right: BorderSide(color: Colors.grey, width: 1)),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 230),
                child: SizedBox(
                  width: 30,
                  child: IconButton(
                    icon: const SizedBox(
                      height: 100,
                      child: Icon(Icons.arrow_back),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://tse1.mm.bing.net/th?id=OIP.8UqOTLl0knNXrmb8iSs8KwHaHw&pid=Api&P=0&h=220',
                        ),
                        radius: 60,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: const Color(0xff1190F9),
                          radius: 15,
                          child: IconButton(
                            icon: const Icon(
                              Icons.camera_alt,
                              size: 16,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              _showImageSourceSelection(context);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Drawer items
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text(
                    'Surya',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: ListTile(
                  leading: const Icon(Icons.badge),
                  title: const Text(
                    'BC001',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: ListTile(
                  leading: const Icon(Icons.support_agent),
                  title: const Text(
                    'Agent',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AgentlistView()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: ListTile(
                  leading: const Icon(Icons.crop_square),
                  title: const Text(
                    'Area',
                    style: TextStyle(fontSize: 15),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ArealistView()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.wb_sunny),
                    const SizedBox(width: 8),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: selectReason,
                        items: reason,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select a mode';
                          }
                          return null;
                        },
                        isExpanded: true,
                        onChanged: (value) {
                          setState(() {
                            selectReason = value ?? 'Light Mode';
                          });
                        },
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 60, top: 110),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginpageView()),
                    );
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.logout_outlined, color: Colors.red),
                      SizedBox(width: 8),
                      Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
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
    );
  }
}

// import 'package:bharatcable_admin/main.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../themeprovider_view.dart';
// import '../agent/agentlist_view.dart.dart';
// import '../area/arealist_view.dart';

// class CustomDrawer extends StatefulWidget {
//   const CustomDrawer({super.key});

//   @override
//   _CustomDrawerState createState() => _CustomDrawerState();
// }

// class _CustomDrawerState extends State<CustomDrawer> {
//   String selectReason = 'Light Mode'; // Default selection

//   final List<DropdownMenuItem<String>> reason = const [
//     DropdownMenuItem(value: "Light Mode", child: Text("Light Mode")),
//     DropdownMenuItem(value: "Dark Mode", child: Text("Dark Mode")),
//     DropdownMenuItem(value: "System Default", child: Text("System Default")),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final themeNotifier = Provider.of<ThemeNotifier>(context);

//     return Drawer(
//       child: SafeArea(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 230),
//               child: SizedBox(
//                 width: 30,
//                 child: IconButton(
//                   icon: const SizedBox(
//                     height: 100,
//                     child: Icon(Icons.arrow_back),
//                   ),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 ),
//               ),
//             ),
//             // Profile Avatar & Camera Button
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     const CircleAvatar(
//                       backgroundImage: NetworkImage(
//                         'https://tse1.mm.bing.net/th?id=OIP.8UqOTLl0knNXrmb8iSs8KwHaHw&pid=Api&P=0&h=220',
//                       ),
//                       radius: 60,
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       right: 0,
//                       child: CircleAvatar(
//                         backgroundColor: const Color(0xff1190F9),
//                         radius: 15,
//                         child: IconButton(
//                           icon: const Icon(
//                             Icons.camera_alt,
//                             size: 16,
//                             color: Colors.white,
//                           ),
//                           onPressed: () {
//                             // Your code to show image source selection
//                           },
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             // Drawer items
//             Padding(
//               padding: const EdgeInsets.only(left: 60),
//               child: ListTile(
//                 leading: const Icon(Icons.person),
//                 title: const Text(
//                   'Surya',
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 onTap: () {},
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 60),
//               child: ListTile(
//                 leading: const Icon(Icons.badge),
//                 title: const Text(
//                   'BC001',
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 onTap: () {},
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 60),
//               child: ListTile(
//                 leading: const Icon(Icons.support_agent),
//                 title: const Text(
//                   'Agent',
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const AgentlistView()),
//                   );
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 60),
//               child: ListTile(
//                 leading: const Icon(Icons.crop_square),
//                 title: const Text(
//                   'Area',
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const ArealistView()),
//                   );
//                 },
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.only(left: 80),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(Icons.wb_sunny),
//                   const SizedBox(width: 8),
//                   Expanded(
//                     child: DropdownButton<ThemeMode>(
//                       value: themeNotifier.themeMode,
//                       onChanged: (ThemeMode? newTheme) {
//                         if (newTheme != null) {
//                           themeNotifier.setTheme(newTheme);
//                         }
//                       },
//                       items: [
//                         const DropdownMenuItem(
//                           value: ThemeMode.light,
//                           child: Text("Light Mode"),
//                         ),
//                         const DropdownMenuItem(
//                           value: ThemeMode.dark,
//                           child: Text("Dark Mode"),
//                         ),
//                       ],
//                     ),
//                   ),

//                   //       DropdownButton<ThemeMode>(
// //               value: themeNotifier.themeMode,
// //               onChanged: (ThemeMode? newTheme) {
// //                 if (newTheme != null) {
// //                   themeNotifier.setTheme(newTheme);
// //                 }
// //               },
// //               items: [
// //                 const DropdownMenuItem(
// //                   value: ThemeMode.light,
// //                   child: Text("Light Mode"),
// //                 ),
// //                 const DropdownMenuItem(
// //                   value: ThemeMode.dark,
// //                   child: Text("Dark Mode"),
// //                 ),
// //               ],
// //             ),
// //           ],
//                 ],
//               ),
//             ),
//             // Logout Button
//             Padding(
//               padding: const EdgeInsets.only(bottom: 60, top: 110),
//               child: TextButton(
//                 onPressed: () {
//                   // Your logout logic
//                 },
//                 child: const Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(Icons.logout_outlined, color: Colors.red),
//                     SizedBox(width: 8),
//                     Text(
//                       'Logout',
//                       style: TextStyle(
//                         color: Colors.red,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
