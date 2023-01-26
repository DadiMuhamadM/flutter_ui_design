import 'package:e_aook_app/thema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BookDetail extends StatefulWidget {
  static const nameRoute = '/BookDetails';
  const BookDetail({super.key});

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {

    final Map data = ModalRoute.of(context)?.settings.arguments as Map;
    Widget header() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        margin: const EdgeInsets.only(top: 30, bottom: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.chevron_left_rounded,
                size: 30,
              ),
            ),
            Text(
              "Book Details",
              style: semiBoldText14.copyWith(color: blackColor),
            ),
            const Icon(Icons.share)
          ],
        ),
      );
    }

    Widget bookImage() {
      return Hero(
        tag: data["imageUrl"],
        child: Container(
          height: 267,
          width: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(data["imageUrl"]),
            ),
          ),
        ),
      );
    }

    Widget infoDecoration() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        height: 60,
        decoration: BoxDecoration(
          color: greyColorInfo,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Rating",
                  style: mediumText10.copyWith(color: devinderColor),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "4.8",
                  style: semiBoldText12.copyWith(color: blackColor),
                ),
              ],
            ),
            VerticalDivider(
              color: devinderColor,
              thickness: 1,
            ),
            Column(
              children: [
                Text(
                  "Number of pages",
                  style: mediumText10.copyWith(color: devinderColor),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "180 Page",
                  style: semiBoldText12.copyWith(color: blackColor),
                ),
              ],
            ),
            VerticalDivider(
              color: devinderColor,
              thickness: 1,
            ),
            Column(
              children: [
                Text(
                  "Language",
                  style: mediumText10.copyWith(color: devinderColor),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "ENG",
                  style: semiBoldText12.copyWith(color: blackColor),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget saveButton(){
      return Positioned(
        top: 400,
        right: 30,
        child: Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(color: greenColor, shape: BoxShape.circle),
          child: Image.asset("assets/icons/icon-save.png"),
        ),
      );
    }

    Widget bottomReadNow() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.only(top : 30),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: greenColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
          ),
          child: Text(
            "Read Now",
            style: semiBoldText20.copyWith(color: whiteColor),
          ),
        ),
      );
    }

    Widget decoration() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data["title"],
                        style: semiBoldText20.copyWith(color: blackColor),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        data["writer"],
                        style: mediumText14.copyWith(color: greyColor),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Free Access",
                  style: mediumText14.copyWith(color: greenColor),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Description",
              style: semiBoldText16.copyWith(color: blackColor),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships. ",
              style: regulerText12.copyWith(color: greyColor),
            ),
            infoDecoration(),
            bottomReadNow()
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  header(),
                  bookImage(),
                  decoration(),
                ],
              ),
              saveButton()
            ],
          )
        ],
      ),
    );
  }
}
