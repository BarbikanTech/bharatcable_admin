import 'package:bharatcable_admin/view/landing_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../themeprovider_view.dart';

class AgentcreationView extends StatefulWidget {
  const AgentcreationView({super.key});

  @override
  State<AgentcreationView> createState() => _AgentcreationViewState();
}

class _AgentcreationViewState extends State<AgentcreationView> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: themeProvider.themeMode == ThemeMode.light
          ? const Color(0xffFFFFFF)
          : const Color(0xff545454),
      appBar: AppBar(
        backgroundColor: themeProvider.themeMode == ThemeMode.light
            ? const Color(0xffFFFFFF)
            : const Color(0xff2B2B2B),
        title: const Text("Create agent"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: themeProvider.themeMode == ThemeMode.light
            ? const Color(0xffFFFFFF)
            : const Color(0xff2B2B2B),
        elevation: 70,
        shadowColor: Colors.black,
        child: Center(
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LandingView(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff0080E9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Submit",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
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
              label: "Phone Number",
              hintText: "Enter Phone Number",
              keyboardType: TextInputType.phone,
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
              label: "Add Area",
              hintText: "Pandiyan Nagar",
              isDropdown: true, // Indicate this field has a dropdown icon
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your submit functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: themeProvider.themeMode == ThemeMode.light
                        ? const Color(0xffD7EDFF)
                        : const Color(0xff2B2B2B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text("+ ADD Area"),
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
      TextInputType keyboardType = TextInputType.text,
      bool isDropdown = false}) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: themeProvider.themeMode == ThemeMode.light
                    ? Colors.black
                    : const Color(0xffFFFFFF),
              ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: themeProvider.themeMode == ThemeMode.light
                ? Colors.grey.shade100
                : const Color(0xff434343),
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
            suffixIcon: isDropdown ? const Icon(Icons.arrow_drop_down) : null,
          ),
        ),
      ],
    );
  }
}
