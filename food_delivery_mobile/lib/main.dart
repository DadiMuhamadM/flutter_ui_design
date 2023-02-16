import 'package:flutter/material.dart';
import 'package:food_delivery_mobile/screen/bottom_nav_bar.dart';
import 'package:food_delivery_mobile/screen/home/home_page.dart';
import 'package:food_delivery_mobile/screen/home/page/food_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        BottomNav.nameRoute: (context) => const BottomNav(),
        HomePage.nameRoute: (context) => const HomePage(),
        FoodDetail.nameRoute: (context) => const FoodDetail(),
      },
    );
  }
}
