import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:saving_app/styles/colors.dart';
import 'package:saving_app/styles/text_style.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: kBgColor.withOpacity(0.5),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 35,
                right: 30,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome,",
                            style: kBody1.copyWith(color: kColorWelcome),
                          ),
                          Text(
                            "Dosan Code",
                            style: kName.copyWith(color: kColorWelcome),
                          ),
                        ],
                      ),
                      Container(
                        constraints: const BoxConstraints.expand(
                          height: 40,
                          width: 40,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            image: const DecorationImage(
                              image:
                                  AssetImage("assets/images/foto profil.jpg"),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: kGrey,
                                blurRadius: 5,
                                offset: Offset.fromDirection(2),
                              ),
                            ]),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    constraints: const BoxConstraints.expand(height: 170),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/bg-container.png"),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: kGrey,
                          blurRadius: 2,
                          offset: Offset.fromDirection(2),
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "My Saving",
                          style: kSubtitle.copyWith(color: kWhiteColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Rp. 10.430.000",
                          style: kHeading1.copyWith(color: kWhiteColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          lineHeight: 4,
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          progressColor: kEgyptianBlue,
                          percent: 0.3,
                          backgroundColor: kWhiteColor,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Rp. 10.430.000 / Rp. 40.000.000",
                          style: kBody2.copyWith(color: kWhiteColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      _transactionButton(
                        "assets/icons/save.png",
                        "Save Money",
                      ),
                      const SizedBox(
                        width: 21,
                      ),
                      _transactionButton(
                        "assets/icons/pay.png",
                        "Pay",
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 200),
              child: DraggableScrollableSheet(
                builder: ((context, scrollController) => Container(
                      decoration: const BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(40),
                        ),
                      ),
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 30,
                        right: 21,
                      ),
                      child: Stack(children: [
                        Container(
                          margin: const EdgeInsets.only(top: 14 + 4),
                          child: SingleChildScrollView(
                            controller: scrollController,
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "Transactions History",
                                    style: kBody3.copyWith(color: kHistori),
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                _transactionList(
                                  kTreeGreen.withOpacity(0.2),
                                  "assets/icons/triangle-up.png",
                                  "Success!",
                                  "February 19, 03:25 PM",
                                  "+ 100.000",
                                ),
                                _transactionList(
                                  kTreeGreen.withOpacity(0.2),
                                  "assets/icons/triangle-up.png",
                                  "Success!",
                                  "February 16, 01:25 PM",
                                  "+ 150.000",
                                ),
                                _transactionList(
                                  kOrange.withOpacity(0.2),
                                  "assets/icons/triangle-down.png",
                                  "Starbucks Drinks",
                                  "February 10, 12:25 PM",
                                  "- 110.000",
                                ),
                                _transactionList(
                                  kOrange.withOpacity(0.2),
                                  "assets/icons/triangle-down.png",
                                  "Payment Invest",
                                  "February 16, 01:25 PM",
                                  "- 150.000",
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 4,
                            width: 48,
                            color: kEgyptianBlue.withOpacity(0.1),
                          ),
                        ),
                      ]),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _transactionList(
      Color kBgColor, String icon, String title, String sub, String amount) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: CircleAvatar(
              backgroundColor: kBgColor,
              child: Image(
                image: AssetImage(
                  icon,
                ),
                width: 14,
                height: 14,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: kBody1.copyWith(color: kHistori),
              ),
              Text(
                sub,
                style: kBody2.copyWith(color: kKalender),
              ),
            ],
          ),
          const Spacer(),
          Text(
            amount,
            style: kBody4.copyWith(color: kNightBlack),
          )
        ],
      ),
    );
  }
}

Widget _transactionButton(String icon, String text) {
  return Expanded(
    child: Container(
      constraints: const BoxConstraints.expand(
        height: 60,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: kNightBlack,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 24,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: kBody1.copyWith(color: kWhiteColor),
          )
        ],
      ),
    ),
  );
}
