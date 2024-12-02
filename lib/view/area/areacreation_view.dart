import 'package:bharatcable_admin/view/landing_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../themeprovider_view.dart';

class AreacreationView extends StatefulWidget {
  const AreacreationView({super.key});

  @override
  State<AreacreationView> createState() => _AreacreationViewState();
}

class _AreacreationViewState extends State<AreacreationView> {
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
        title: const Text("Create Area"),
      ),
      bottomNavigationBar: BottomAppBar(
          color: themeProvider.themeMode == ThemeMode.light
              ? const Color(0xffFFFFFF)
              : const Color(0xff2B2B2B),
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
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            _buildTextField(
              context,
              label: "Area Name",
              hintText: "Pandiyan Nagar",
            ),
            const SizedBox(height: 480),
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
