import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          decoration: BoxDecoration(
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
              icon: Icon(Icons.chevron_left),
              iconSize: 30,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingPages()),
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
              SizedBox(width: 0.0, height: 80.0),
              Center(
                child: Container(
                  width: 330,
                  height: 50,
                  child: TextField(
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Color.fromARGB(255, 67, 55, 0),
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color(0xFFD8B600),
                          width: 2,
                        ),
                      ),
                      labelText: "FullName",
                    ),
                  ),
                ),
              ),
              SizedBox(width: 0.0, height: 10.0),
              Center(
                child: Container(
                  width: 330,
                  height: 50, // Adjust the height here
                  child: TextField(
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Color.fromARGB(255, 67, 55, 0),
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color(0xFFD8B600),
                          width: 2,
                        ),
                      ),
                      labelText: "Email",
                    ),
                  ),
                ),
              ),
              SizedBox(width: 0.0, height: 10.0),
              Center(
                child: Container(
                  width: 330,
                  height: 50, // Adjust the height here
                  child: TextField(
                    obscureText: true,
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Color.fromARGB(255, 67, 55, 0),
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color(0xFFD8B600),
                          width: 2,
                        ),
                      ),
                      labelText: "Password",
                    ),
                  ),
                ),
              ),
              Center(
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
              )
            ],
          ),
        )
      ],
    );
  }
}
