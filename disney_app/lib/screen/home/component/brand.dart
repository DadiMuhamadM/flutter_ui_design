import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:disney_app/screen/home/models/brand_list.dart';

class Brand extends StatelessWidget {
  const Brand({super.key, required this.info});

  final BrandList info;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(10),
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
      child: Align(
        alignment: Alignment.center,
        child: Image.asset(info.imageUrlBrand),
      ),
    );
  }
}
