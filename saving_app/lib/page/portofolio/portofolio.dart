import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:saving_app/styles/colors.dart';
import 'package:saving_app/styles/text_style.dart';

class Portofolio extends StatelessWidget {
  const Portofolio({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 25),
            height: 230,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
              image: const DecorationImage(
                image: AssetImage("assets/images/bg-container-2.png"),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                    color: kGrey,
                    blurRadius: 5,
                    offset: Offset.fromDirection(2))
              ],
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Text(
                    "My Portofolio",
                    style: kBody3.copyWith(color: kWhiteColor),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "Savings Value",
                    style: kSubtitle.copyWith(color: kWhiteColor),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Rp 12.480.000",
                    style: kHeading1.copyWith(color: kWhiteColor),
                  )
                ],
              ),
            ),
          ),
          _portofolioCardList(
            "assets/icons/pension.png",
            "Pension savings funds",
            0.3,
            "Rp. 10.430.000 / Rp. 40.000.000",
            "Last saving February 19",
          ),
          _portofolioCardList(
            "assets/icons/pension.png",
            "Camera",
            0.5,
            "Rp. 2.050.000 / Rp. 4.000.000",
            "Last saving February 16",
          ),
          _portofolioCardList(
            "assets/icons/pension.png",
            "Camera",
            0.5,
            "Rp. 2.050.000 / Rp. 4.000.000",
            "Last saving February 16",
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: kWhiteColor,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                elevation: 4,
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const Icon(
                    Icons.add,
                    size: 13,
                    color: kHistori,
                  ),
                  Text(
                    "add portfolio",
                    style: kBody4.copyWith(color: kHistori),
                  ),
                ],
              ),

            ),
          )
        ],
      ),
    );
  }

  Widget _portofolioCardList(
    String icon,
    String title,
    double percent,
    String amount,
    String time,
  ) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 30,
        right: 30,
      ),
      padding: const EdgeInsets.fromLTRB(15, 19, 15, 14),
      constraints: const BoxConstraints.expand(
        height: 130,
      ),
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: kGrey,
              blurRadius: 2,
              offset: Offset.fromDirection(1, 2),
            )
          ]),
      child: Row(
        children: [
          Container(
            height: 55,
            width: 55,
            child: CircleAvatar(
              backgroundColor: kBgColor,
              child: Image.asset(
                icon,
                width: 24,
                height: 24,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: kbutton,
                ),
                const SizedBox(
                  height: 12,
                ),
                LinearPercentIndicator(
                  lineHeight: 4,
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  progressColor: kBlueRibbon,
                  percent: percent,
                  backgroundColor: kGrey.withOpacity(0.3),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  amount,
                  style: kBody5.copyWith(color: kGrey),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    time,
                    style: kBody5.copyWith(color: kKalender),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
