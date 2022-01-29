import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarss(),
      body: Body(),
    );
  }
}

class AppBarss extends StatelessWidget implements PreferredSizeWidget {
  const AppBarss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          'Disimpan',
          style: TextStyle(
              fontFamily: 'plus-jakarta-sans',
              fontWeight: FontWeight.bold,
              fontSize: 24),
          textAlign: TextAlign.left,
        ),
        actions: <Widget>[
          IconButton(
              alignment: Alignment.centerRight,
              onPressed: () {},
              icon: Image.asset("assets/icons/history.png"))
        ]);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(18)),
                ),
                Expanded(child: AutoSizeText(''))
              ]),
              Row(children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(18)),
                ),
                Expanded(child: AutoSizeText(''))
              ]),
              Row(children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.none),
                      borderRadius: BorderRadius.circular(18)),
                ),
                Expanded(child: AutoSizeText(''))
              ])
            ]));
  }
}
