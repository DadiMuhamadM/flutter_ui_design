import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/page/register_page.dart';
import 'package:phlox_animations/phlox_animations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/banner-bg.png"),
            alignment: Alignment.topLeft,
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 21,
              top: 40,
              width: 100,
              height: 130,
              child: PhloxAnimations(
                duration: const Duration(seconds: 3),
                fromY: -100,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/astronot1.png"),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 181,
              top: 11,
              width: 170,
              height: 160,
              child: PhloxAnimations(
                duration: const Duration(seconds: 3),
                fromY: -100,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/planet1.png"),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 274,
              top: 130,
              width: 120,
              height: 130,
              child: PhloxAnimations(
                duration: const Duration(seconds: 3),
                fromY: -150,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/planet2.png"),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 54,
              right: 54,
              top: 230,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PhloxAnimations(
                    duration: const Duration(seconds: 2),
                    fromX: -100,
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Text(
                    "E-Mail",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    decoration: InputDecoration(
                      hintText: "yourname@example.com",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.white.withOpacity(0.5)),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white.withOpacity(0.5),
                        size: 26,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Password",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    decoration: InputDecoration(
                      hintText: "yourpassword",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.white.withOpacity(0.5)),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white.withOpacity(0.5),
                        size: 26,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password",
                          style: GoogleFonts.poppins(
                            color: Colors.white.withOpacity(0.7),
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PhloxAnimations(
                        duration: const Duration(seconds: 2),
                        fromX: 100,
                        child: TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const LoginPage()),
                            // );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFF264386),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            elevation: 4,
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 60),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Sign in",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Don’t have an account?",
                    style: GoogleFonts.poppins(
                      color: Colors.white.withOpacity(0.7),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Register(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign up",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      )
                    ],
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
