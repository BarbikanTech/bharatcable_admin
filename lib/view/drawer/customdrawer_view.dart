import 'package:bharatcable_admin/view/auth/login_view.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../../themeprovider_view.dart';

import '../agent/agentlist_view.dart.dart';
import '../area/arealist_view.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer(
      {super.key, required Null Function(String theme) onThemeChange});

  @override
  // ignore: library_private_types_in_public_api
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  String selectReason = ' Mode';

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
                  Navigator.of(context).pop();
                  await ImagePicker().pickImage(source: ImageSource.camera);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo),
                title: const Text('Gallery'),
                onTap: () async {
                  Navigator.of(context).pop();
                  await ImagePicker().pickImage(source: ImageSource.gallery);
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
    final themeProvider = Provider.of<ThemeProvider>(context);

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
                padding: const EdgeInsets.only(right: 230),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
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
                            icon: const Icon(Icons.camera_alt,
                                size: 16, color: Colors.white),
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
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Surya', style: TextStyle(fontSize: 15)),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: ListTile(
                  leading: const Icon(Icons.badge),
                  title: const Text('BC001', style: TextStyle(fontSize: 15)),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: ListTile(
                  leading: const Icon(Icons.support_agent),
                  title: const Text('Agent', style: TextStyle(fontSize: 15)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AgentlistView()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: ListTile(
                  leading: const Icon(Icons.crop_square),
                  title: const Text('Area', style: TextStyle(fontSize: 15)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ArealistView()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    const Icon(Icons.wb_sunny),
                    const SizedBox(width: 10),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: selectReason,
                        items: const [
                          DropdownMenuItem(
                            value: " Mode",
                            child: Row(
                              children: [
                                SizedBox(width: 8),
                                Text(" Mode"),
                              ],
                            ),
                          ),
                          DropdownMenuItem(
                            value: "Light Mode",
                            child: Row(
                              children: [
                                SizedBox(width: 8),
                                Text("Light Mode"),
                              ],
                            ),
                          ),
                          DropdownMenuItem(
                            value: "Dark Mode",
                            child: Row(
                              children: [
                                SizedBox(width: 8),
                                Text("Dark Mode"),
                              ],
                            ),
                          ),
                          DropdownMenuItem(
                            value: "System Default",
                            child: Row(
                              children: [
                                SizedBox(width: 8),
                                Text("System Default"),
                              ],
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectReason = value!;
                          });
                          if (value == "Light Mode") {
                            themeProvider.setThemeMode(ThemeMode.light);
                          } else if (value == "Dark Mode") {
                            themeProvider.setThemeMode(ThemeMode.dark);
                          } else {
                            themeProvider.setThemeMode(ThemeMode.system);
                          }
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
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
                            builder: (context) => const LoginpageView()));
                  },
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.logout_outlined, color: Colors.red),
                      SizedBox(width: 8),
                      Text('Logout',
                          style: TextStyle(color: Colors.red, fontSize: 16)),
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
