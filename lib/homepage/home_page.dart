import 'package:flutter/material.dart';
import 'package:layarin_mvp/homepage/components/body.dart';
import 'package:layarin_mvp/homepage/components/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
