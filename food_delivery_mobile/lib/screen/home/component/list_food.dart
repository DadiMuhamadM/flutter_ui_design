import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_mobile/screen/home/model/food_item.dart';
import 'package:food_delivery_mobile/screen/home/page/food_detail.dart';

import '../../../thema.dart';

class ListFood extends StatelessWidget {
  const ListFood({
    super.key,
    required this.infoFood,
  });

  final FoodItems infoFood;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          height: 265,
          width: 190,
          color: colorBG,
        ),
        Container(
          height: 220,
          width: 190,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(1, 2),
              )
            ],
            color: colorWhite,
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, FoodDetail.nameRoute, arguments: {
                'imageUrlFoodItems': infoFood.imageUrlFoodItems,
                "textFoodItems": infoFood.textFoodItems
              });
            },
            child: Column(
              children: [
                Image.asset(
                  infoFood.imageUrlFoodItems,
                  height: 140,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  infoFood.textFoodItems,
                  style: semiBold18,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/icon/dollar.png",
                      width: 24,
                    ),
                    Text(
                      "11",
                      style: black24,
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    // const Spacer(),
                    Image.asset(
                      "assets/icon/cabe.png",
                      width: 24,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
