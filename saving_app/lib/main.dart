import 'package:flutter/material.dart';
import 'package:saving_app/page/main_page.dart';
import 'package:saving_app/page/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
  
        primarySwatch: Colors.blue,
      ),
     routes: {
      OnBoarding.nameRoute:(context) => const OnBoarding(),
      MainPage.nameRoute:(context) => const MainPage()
     },
    );
  }
}
