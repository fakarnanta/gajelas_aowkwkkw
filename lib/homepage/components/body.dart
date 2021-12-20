import 'package:flutter/material.dart';
import 'package:layarin_mvp/recommendation_card.dart';
import 'header.dart';
import 'title.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
          const Header(),
          const MenuBar(),
          const RecommendationTitleCard(
            title: "Destinasi Pilihan",
          ),
          // ignore: prefer_const_constructors
          RecomendsTrip(),
          const RecommendationTitleCard(
            title: "Aktivitas unggulan",
          ),
          // ignore: prefer_const_constructors
          RecomendsTrip()
        ]));
  }
}
