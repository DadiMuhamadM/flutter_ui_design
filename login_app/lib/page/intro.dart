import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/page/login_page.dart';
import 'package:phlox_animations/phlox_animations.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/banner-bg.png"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 45,
                right: 45,
                top: 65,
              ),
              child: Column(
                children: [
                  PhloxAnimations(
                    duration: const Duration(seconds: 2),
                    fromY: -100,
                    child: Image.asset(
                      "assets/images/astronot2.png",
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Ready to Explore Outer Space",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Welcome aspiring astronauts, don't forget to fasten your seat belts because we are going to explore the world of outer space",
                    style: GoogleFonts.poppins(
                      color: Colors.white.withOpacity(0.7),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 85,
                  ),
                  PhloxAnimations(
                    duration: const Duration(seconds: 2),
                    fromY: 100,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFF264386),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(18),
                          ),
                        ),
                        elevation: 4,
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 30,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Image(
                            image: AssetImage("assets/images/Vector.png"),
                            height: 36,
                            width: 36,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "Get Started",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
