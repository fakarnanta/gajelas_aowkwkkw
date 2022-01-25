import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: const <Widget>[])),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset("assets/icons/back.png"),
          Column(
            children: const <Widget>[
              Text(
                "Smiths Shoes",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2F2F3E)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset("assets/images/komodo.jpg"),
      const Positioned(
        child: AppBar(),
        top: 0,
      ),
      Positioned(
          child: FloatingActionButton(
              elevation: 2,
              child: Image.asset(
                "images/heart_icon_disabled.png",
                width: 30,
                height: 30,
              ),
              backgroundColor: Colors.white,
              onPressed: () {}))
    ]);
  }
}

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: const <Widget>[
      AutoSizeText(
        'Taman Nasional Komodo adalah salah satu taman nasional tertua di Indonesia. Taman Nasional ini berdiri pada tanggal 6 Maret 1980. Taman Nasional Komodo memiliki luas wilayah total sebesar 173.000 Ha yang meliputi wilayah terestrial maupun perairan. Taman Nasional Komodo didirikan dengan tujuan untuk menjaga kelestarian hidup satwa biawak komodo (Varanus komodoensis) bersama dengan alam sekitarnya.',
        style: TextStyle(fontSize: 20),
      )
    ])));
  }
}
