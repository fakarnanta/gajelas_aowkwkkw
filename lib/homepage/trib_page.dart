import 'package:flutter/material.dart';

class TribPage extends StatelessWidget {
  const TribPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class AppBarss extends StatelessWidget implements PreferredSizeWidget {
  const AppBarss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          'Trib',
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
    return ListView(scrollDirection: Axis.horizontal, children: <Widget>[
      TextButton(
          onPressed: () {
            Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 1))),
                child: Text('Trib',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'plus-jakarta-sans',
                        fontSize: 18)));
          },
          child: Text('Trib',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'plus-jakarta-sans',
                  fontSize: 18))),
      TextButton(
          onPressed: () {
            Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 1))),
                child: Text('Belum Dibayar',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'plus-jakarta-sans',
                        fontSize: 18)));
          },
          child: Text('Belum Dibayar',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'plus-jakarta-sans',
                  fontSize: 18))),
      TextButton(
          onPressed: () {
            Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 1))),
                child: Text('Menunggu Persetujuan',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'plus-jakarta-sans',
                        fontSize: 18)));
          },
          child: Text('Menunggu Persetujuan',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'plus-jakarta-sans',
                  fontSize: 18)))
    ]);
  }
}
