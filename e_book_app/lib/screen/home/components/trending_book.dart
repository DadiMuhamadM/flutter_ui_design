import 'package:e_aook_app/model/book.dart';
import 'package:e_aook_app/screen/home/pages/book_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../thema.dart';

class TrendingBook extends StatelessWidget {
  const TrendingBook({
    Key? key, required this.info,
  }) : super(key: key);

  final BookList info;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => Navigator.pushNamed(context, BookDetail.nameRoute, arguments: {
            "imageUrl" : info.imageUrl,
            "writer" : info.writer,
            "title" : info.title,
          }),
          child: Hero(
            tag: info.imageUrl,
            child: Container(
              margin: const EdgeInsets.only(top: 12,right: 20),
              height: 160,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(info.imageUrl),
                ),
              ),
                  
            ),
          ),
        ),
       const SizedBox(height: 8,),
        Text(info.writer, style: mediumText14.copyWith(color: greyColor),),
        Text(info.title,style: semiBoldText14.copyWith(color: blackColor),)
      ],
    );
  }
}