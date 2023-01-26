import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../thema.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Cart", style: semiBoldText20,),
      ),
    );
  }
}