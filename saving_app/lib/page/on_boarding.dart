import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:saving_app/styles/colors.dart';
import 'package:saving_app/styles/text_style.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
   static const nameRoute = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBgColor,
        child: Column(
          children: [
            const SafeArea(
              child: Image(
                image: AssetImage("assets/images/ob-money.png"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              constraints: const BoxConstraints.expand(
                height: 260,
                width: 330,
              ),
              decoration: const BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "Welcome",
                    style: kHeading1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "welcome to Fleet Finance, the easy way to improve your finances and help you control expenses and income",
                    style: kSubtitle.copyWith(color: kSuvaGrey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/main", (route) => false);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: kBlueRibbon,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 36)),
                    child: Text(
                      "Get Started",
                      style: kbutton.copyWith(color: kWhiteColor),
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
