import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_mobile/screen/home/model/category_item.dart';

import '../../../thema.dart';

class ListCategory extends StatefulWidget {
  const ListCategory({
    super.key,
    required this.info,
    // required this.infoFood,
  });

  final CategoryItem info;

  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  int _isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
      },
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(2, 6), //
                )
              ],
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              color: colorWhite,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset(widget.info.imageUrlCategoryItem),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            widget.info.textCategoryItem,
            style: bold15.copyWith(color: colorABU),
          )
        ],
      ),
    );
  }
}
