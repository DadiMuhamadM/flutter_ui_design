import 'package:disney_app/screen/home/component/brand.dart';
import 'package:disney_app/screen/home/models/brand_list.dart';
import 'package:disney_app/screen/home/models/film_list.dart';
import 'package:disney_app/thema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'component/list_film.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget header() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/foto profil.png"),
              ),
            ),
          ),
          Image.asset(
            "assets/images/disney+.png",
            width: 95,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1.0, color: primaryColor),
            ),
            child: Image.asset(
              "assets/icon/love2.png",
            ),
          )
        ],
      ),
    );
  }

  Widget headerPromotion() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          height: 220,
          color: backgroundColor,
        ),
        Container(
          width: double.infinity,
          height: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: primaryColor,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 15,
                  bottom: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/luca.png",
                      width: 90,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Colors.blue,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.play_arrow, color: whiteColor),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Watch Now",
                            style: regular12.copyWith(color: whiteColor),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              "assets/images/gambar1.png",
              width: 220,
            ),
          ],
        ),
      ],
    );
  }

  Widget ketegori() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Brand",
            style: regular18.copyWith(
              color: Colors.black,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "See all",
            style: regular14.copyWith(
              color: primaryColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget listBrand() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: brandList
            .asMap()
            .entries
            .map((MapEntry map) => Brand(
                  info: brandList[map.key],
                ))
            .toList(),
      ),
    );
  }

  Widget kategoriBrand() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Text(
            "New",
            style: regular18,
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            "assets/images/disney+.png",
            width: 55,
          ),
          const Spacer(),
          Text(
            "See all",
            style: regular14.copyWith(color: primaryColor),
          ),
        ],
      ),
    );
  }

  Widget listFilm() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
          children: filmList
              .asMap()
              .entries
              .map((MapEntry map) => DaftarFilm(
                    infoFilm: filmList[map.key],
                  ))
              .toList()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Column(
                children: [
                  header(),
                  const SizedBox(
                    height: 20,
                  ),
                  headerPromotion(),
                  const SizedBox(
                    height: 20,
                  ),
                  ketegori(),
                ],
              ),
            ),
            listBrand(),
            const SizedBox(
              height: 20,
            ),
            kategoriBrand(),
            const SizedBox(
              height: 20,
            ),
            listFilm(),
          ],
        ),
      ),
    );
  }
}
