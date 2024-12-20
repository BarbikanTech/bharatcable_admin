import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../themeprovider_view.dart';

class CustomerCreateView extends StatefulWidget {
  const CustomerCreateView({super.key});

  @override
  State<CustomerCreateView> createState() => _CustomerCreateViewState();
}

class _CustomerCreateViewState extends State<CustomerCreateView> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: themeProvider.themeMode == ThemeMode.light
          ? const Color(0xffFFFFFF)
          : const Color(0xff545454),
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
            const SizedBox(height: 150),
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
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: themeProvider.themeMode == ThemeMode.light
                        ? const Color(0xff2B2B2B)
                        : Colors.white, // AppBar background col),),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(BuildContext context,
      {required String label,
      required String hintText,
      TextInputType keyboardType = TextInputType.text}) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final labelColor = themeProvider.themeMode == ThemeMode.light
        ? Colors.black54
        : Colors.white;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .copyWith(color: labelColor),
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
          ),
        ),
      ],
    );
  }

  Widget _buildInfoBox(String title, String subtitle) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: const EdgeInsets.all(10),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: themeProvider.themeMode == ThemeMode.light
            ? const Color(0xff2B2B2B)
            : const Color(0xff434343),
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
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: themeProvider.themeMode == ThemeMode.light
            ? const Color(0xff2B2B2B)
            : const Color(0xff434343),
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
