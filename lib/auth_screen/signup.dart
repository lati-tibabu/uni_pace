import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uni_pace/components/passwordfield.dart';
import 'package:uni_pace/components/primarybutton.dart';
import 'package:uni_pace/components/textfield.dart';
import 'package:uni_pace/onboarding/onboarding_pages.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isChecked = false;

  void _onCheckboxChanged(bool? newValue) {
    setState(() {
      _isChecked = newValue ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background/auth_bg1.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: const Icon(Icons.chevron_left),
              iconSize: 30,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OnboardingPages()),
                );
              },
              color: Colors.black,
            ),
            title: Center(
              child: Text(
                "Sign Up",
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              const SizedBox(width: 0.0, height: 80.0),
              // ignore: prefer_const_constructors
              Center(
                child: Textfield(hintName: "name"),
              ),
              const SizedBox(width: 0.0, height: 10.0),
              // ignore: prefer_const_constructors
              Center(
                child: Textfield(hintName: "email"),
              ),
              const SizedBox(width: 0.0, height: 10.0),
              // ignore: prefer_const_constructors
              Center(
                child: Passwordfield(hintName: "password"),
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.black54,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: _onCheckboxChanged,
                    ),
                    Container(
                      width: 250,
                      child: Text(
                        "By signing up, you agree to the Terms of Service and Privacy Policy",
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Primarybutton(ButtonText: "Sign Up"),
            ],
          ),
        )
      ],
    );
  }
}
