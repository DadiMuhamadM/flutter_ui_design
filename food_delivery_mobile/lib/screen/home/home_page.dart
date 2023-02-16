import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delivery_mobile/screen/home/model/category_item.dart';
import 'package:food_delivery_mobile/screen/home/model/food_item.dart';

import '../../thema.dart';
import 'component/list_category.dart';
import 'component/list_food.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const nameRoute = '/HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

Widget header() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 42,
        width: 42,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/icon/drawer.png"),
          ),
        ),
      ),
      Container(
        height: 44,
        width: 44,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("assets/icon/foto profil.png"),
          ),
        ),
      )
    ],
  );
}

Widget title() {
  return Text(
    "Good food.\nFast delivery.",
    style: black40,
  );
}

Widget category() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: categoryItem
            .asMap()
            .entries
            .map((MapEntry map) => ListCategory(
                  info: categoryItem[map.key],
                ))
            .toList()),
  );
}

Widget subTittle() {
  return Text(
    "Popular now",
    style: black24,
  );
}

Widget foodItems() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.only(left: 20),
    child: Column(
      children: [
        Row(
          children: itemFood
              .asMap()
              .entries
              .map((MapEntry map) => ListFood(
                    infoFood: itemFood[map.key],
                  ))
              .toList(),
        ),
        const Text("")
      ],
    ),
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorBG,
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(),
                  const SizedBox(
                    height: 40,
                  ),
                  title(),
                  const SizedBox(
                    height: 40,
                  ),
                  category(),
                  const SizedBox(
                    height: 50,
                  ),
                  subTittle(),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            foodItems()
          ],
        ),
      ),
    );
  }
}
