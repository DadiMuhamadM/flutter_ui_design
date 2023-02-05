import 'package:disney_app/screen/home/models/film_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../thema.dart';

class DaftarFilm extends StatelessWidget {
  const DaftarFilm({super.key, required this.infoFilm});

  final FilmList infoFilm;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 225,
      width: 205,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(infoFilm.imageUrlFilmList),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            infoFilm.textJudulFilm,
            style: regular12,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "1 hour",
                style: regular12,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/icon/play.png",
                    width: 12,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "9.5",
                    style: regular12,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Image.asset(
                    "assets/icon/star.png",
                    width: 12,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
