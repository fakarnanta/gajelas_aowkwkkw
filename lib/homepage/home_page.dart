// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:layarin_mvp/body.dart';
import 'package:layarin_mvp/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
