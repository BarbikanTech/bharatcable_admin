import 'package:bharatcable_admin/view/landing_view.dart';
import 'package:flutter/material.dart';

class AreacreationView extends StatefulWidget {
  const AreacreationView({super.key});

  @override
  State<AreacreationView> createState() => _AreacreationViewState();
}

class _AreacreationViewState extends State<AreacreationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Create Area"),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
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
            suffixIcon: isDropdown ? const Icon(Icons.arrow_drop_down) : null,
          ),
        ),
      ],
    );
  }
}
