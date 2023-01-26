import 'package:e_aook_app/screen/bottom_nav_bar.dart';
import 'package:e_aook_app/screen/home/home_page.dart';
import 'package:e_aook_app/screen/home/pages/book_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
  
      routes: {
        BottomNavBar.nameRoute: (context) => const BottomNavBar(),
        HomePage.nameRoute: (context) => const HomePage(),
        BookDetail.nameRoute: (context) => const BookDetail()
      },
    );
  }
}

