import 'package:disney_app/thema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const nameRoute = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 90),
              child: Image(
                image: AssetImage(
                  "assets/images/disney+.png",
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(69),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 23,
                  horizontal: 65,
                ),
              ),
              child: Text(
                "Sign up with Email",
                style: regular18.copyWith(color: whiteColor),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 23,
                  horizontal: 35,
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: primaryColor),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(69),
                  ),
                ),
                child: Text(
                  "Sign up with Socail Media",
                  style:
                      regular18.copyWith(color: Colors.black.withOpacity(0.5)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/main", (route) => false);
              },
              child: Text(
                "Skip",
                style: regular14.copyWith(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
