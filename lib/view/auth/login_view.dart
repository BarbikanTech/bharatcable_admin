import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../themeprovider_view.dart';
import '../landing_view.dart';

class LoginpageView extends StatefulWidget {
  const LoginpageView({super.key});

  @override
  State<LoginpageView> createState() => _LoginpageViewState();
}

class _LoginpageViewState extends State<LoginpageView> {
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: themeProvider.themeMode == ThemeMode.light
          ? const Color(0xffFFFFFF)
          : Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: themeProvider.themeMode == ThemeMode.light
                    ? const Color(0xffFFFFFF)
                    : Colors
                        .black, // AppBar background color// AppBar // AppBar background color
                image: const DecorationImage(
                  image: AssetImage("assets/back.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0, top: 15),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                              height: 44,
                              width: 180,
                              child:
                                  Image(image: AssetImage("assets/logo.png"))),
                          Center(
                            child: SizedBox(
                              height: 302,
                              width: 404,
                              child: Image.asset(
                                "assets/cable.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: themeProvider.themeMode == ThemeMode.light
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                  Text(
                    "Let fill up this form and fill it correctly",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: themeProvider.themeMode == ThemeMode.light
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    child: Container(
                      height: 305,
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20, top: 20),
                      color: themeProvider.themeMode == ThemeMode.light
                          ? const Color(0xffFFFFFF)
                          : const Color(0xff7D7D7D), // AppBar background color
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: SizedBox(
                              // height: 120,
                              width: 300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mobile",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: themeProvider.themeMode ==
                                              ThemeMode.light
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 05,
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: 300,
                                    child: TextFormField(
                                      controller: _mobileController,
                                      keyboardType: TextInputType.phone,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: themeProvider.themeMode ==
                                                ThemeMode.light
                                            ? Colors.grey.shade100
                                            : const Color(0xff434343),
                                        hintText: '9876098765',
                                        hintStyle: TextStyle(
                                            color: themeProvider.themeMode ==
                                                    ThemeMode.light
                                                ? Colors.black
                                                : Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                        prefixIcon: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 05),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const Icon(
                                                Icons.phone,
                                                size: 20,
                                              ),
                                              Container(
                                                height: 20,
                                                width: 1,
                                                color: const Color(0xff000000),
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10),
                                              ),
                                            ],
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide.none),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // const SizedBox(height: 10),
                          Center(
                            child: SizedBox(
                              width: 300,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Password",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: themeProvider.themeMode ==
                                              ThemeMode.light
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: 300,
                                    child: TextFormField(
                                      controller: _passwordController,
                                      obscureText: _obscurePassword,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: themeProvider.themeMode ==
                                                ThemeMode.light
                                            ? Colors.grey.shade100
                                            : const Color(0xff434343),
                                        hintText: 'Enter your password',
                                        hintStyle: TextStyle(
                                            color: themeProvider.themeMode ==
                                                    ThemeMode.light
                                                ? Colors.black
                                                : Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                        prefixIcon: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 05),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const Icon(
                                                Icons.lock,
                                                size: 20,
                                              ),
                                              Container(
                                                height: 20,
                                                width: 1,
                                                color: const Color(0xff000000),
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10),
                                              ),
                                            ],
                                          ),
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            _obscurePassword
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _obscurePassword =
                                                  !_obscurePassword;
                                            });
                                          },
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide.none),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Container(
                                height: 50,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const LandingView()));
                                  },
                                  child: Text(
                                    "Get Started",
                                    style: TextStyle(
                                      color: themeProvider.themeMode ==
                                              ThemeMode.light
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
