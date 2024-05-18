import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uni_pace/auth_screen/login.dart';
import 'package:uni_pace/components/primarybutton.dart';
import 'package:uni_pace/components/textfield.dart';
import 'package:uni_pace/onboarding/onboarding_pages.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _LoginState();
}

class _LoginState extends State<Signup> {
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
              iconSize: 40,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OnboardingPages()),
                );
              },
              color: Color(0xFFD8B600),
            ),
            title: Text(
              "Sign Up",
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(width: 0.0, height: 80.0),
                // ignore: prefer_const_constructors
                Center(
                  child: const Textfield(hintName: "Name", obscure: false),
                ),
                const SizedBox(width: 0.0, height: 10.0),
                // ignore: prefer_const_constructors
                Center(
                  child: const Textfield(hintName: "Email", obscure: false),
                ),
                const SizedBox(width: 0.0, height: 10.0),
                // ignore: prefer_const_constructors
                Center(
                  child: const Textfield(hintName: "Password", obscure: true),
                ),
                const SizedBox(width: 0.0, height: 10.0),

                SizedBox(
                  width: 300,
                  // decoration: BoxDecoration(
                  //   // color: Colors.black54,
                  // ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: _onCheckboxChanged,
                      ),
                      SizedBox(
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
                const SizedBox(width: 0.0, height: 10.0),
                const Primarybutton(ButtonText: "Sign Up"),

                const SizedBox(width: 0.0, height: 10.0),

                Center(
                  child: SizedBox(
                    // width: 250,
                    child: Text(
                      "or with",
                      style: GoogleFonts.montserrat(
                        color: const Color(0xFFBD9F00),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 0.0, height: 10.0),

                Container(
                  width: 280,
                  height: 50,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    border: Border.all(
                      color: const Color(0xFFD8B600),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shadowColor:
                              const WidgetStatePropertyAll(Colors.transparent),
                          // minimumSi/StateProperty.all(const Size(280, 60)),
                          backgroundColor: WidgetStateProperty.all(
                              const Color.fromARGB(0, 0, 0, 0))),
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Login()),
                        // );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/icons/google.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5.0, height: 0.0),
                          Text(
                            "Sign Up with Google",
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF4B3B00)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 0.0, height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFFBD9F00)),
                    ),
                    const SizedBox(width: 5.0, height: 0.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF4B3B00),
                          decoration: TextDecoration.underline,
                          // fontStyle: FontStyle.
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 0.0, height: 10.0)
              ],
            ),
          ),
        )
      ],
    );
  }
}
