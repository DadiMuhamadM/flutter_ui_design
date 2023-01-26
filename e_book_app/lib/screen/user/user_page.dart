import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../thema.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("User", style: semiBoldText20,),
      ),
    );
  }
}