import 'package:e_aook_app/model/book.dart';
import 'package:e_aook_app/thema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'components/recent_book.dart';
import 'components/trending_book.dart';

class HomePage extends StatefulWidget {
   static const nameRoute = '/homePage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _categories = [
    "All Books",
    "Comic",
    "Manga",
    "Novel",
    "Fairy Tales",
  ];

  int _IsSelected = 0;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/foto profil.jpg"))),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Dosan",
                  style: semiBoldText16,
                ),
                Text(
                  "Good Morning",
                  style: regulerText14.copyWith(color: greyColor),
                ),
              ],
            ),
           const Spacer(),
            Image.asset(
              "assets/icons/icon-menu.png",
              width: 18,
            )
          ],
        ),
      );
    }

    Widget searchField() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          decoration: InputDecoration(
              hintText: "Find Your Favorite Book",
              hintStyle: mediumText12.copyWith(color: greyColor),
              fillColor: greySearchField,
              filled: true,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              isCollapsed: true,
              contentPadding: const EdgeInsets.all(18),
              suffixIcon: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Icon(
                    Icons.search_rounded,
                    color: whiteColor,
                  ),
                ),
              )),
        ),
      );
    }

    Widget recentBook() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(children: const [
          RecentBook(
              image: "assets/images/recentbook_1.png", title: "The Magic"),
          SizedBox(
            width: 20,
          ),
          RecentBook(
              image: "assets/images/recentbook_2.png", title: "The Martian"),
          SizedBox(
            width: 20,
          ),
          RecentBook(
              image: "assets/images/recentbook_1.png", title: "The Magic"),
        ]),
      );
    }

    Widget categories(int index) {
      return InkWell(
        onTap: (() {
          setState(() {
            _IsSelected = index;
          });
        }),
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          decoration: BoxDecoration(
            color:
                _IsSelected == index ? greenColor : greyColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            _categories[index],
            style: semiBoldText14.copyWith(
                color: _IsSelected == index ? whiteColor : greyColor),
          ),
        ),
      );
    }

    Widget listCategories() {
      return SingleChildScrollView(
        padding: const EdgeInsets.only(left: 30),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _categories
              .asMap()
              .entries
              .map((MapEntry map) => categories(map.key))
              .toList(),
        ),
      );
    }

    Widget trendingBook() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: bookList
              .asMap()
              .entries
              .map(
                (MapEntry map) => TrendingBook(info: bookList[map.key],),
              )
              .toList(),
        ),
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(),
                  const SizedBox(
                    height: 30,
                  ),
                  searchField(),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Recent Book",
                      style: semiBoldText16.copyWith(color: blackColor),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  recentBook(),
                ],
              ),
            ),
            listCategories(),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Text(
                "Trending Now",
                style: semiBoldText16.copyWith(
                  color: blackColor,
                ),
              ),
            ),
            trendingBook(),
          ],
        ));
  }
}
