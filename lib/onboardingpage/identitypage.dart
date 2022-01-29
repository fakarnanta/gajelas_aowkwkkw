import 'package:flutter/material.dart';
import 'package:layarin_mvp/constant.dart';

class IdentityPage extends StatelessWidget {
  const IdentityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars(),
    );
  }
}

class AppBars extends StatelessWidget implements PreferredSizeWidget {
  const AppBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        title: Text('Akun Baru',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'plus-jakarta-sans',
                fontSize: 20,
                fontWeight: FontWeight.bold)));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: size.width * 0.8,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  border: Border.all(
                      width: 2, color: Colors.black, style: BorderStyle.solid),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nama Lengkap',
                    filled: true,
                    isDense: true,
                  ),
                  keyboardType: TextInputType.name,
                )),
            Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  border: Border.all(
                      width: 2, color: Colors.black, style: BorderStyle.solid),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nama Lengkap',
                    filled: true,
                    isDense: true,
                  ),
                  keyboardType: TextInputType.name,
                )),
            Spacer(),
            // ignore: deprecated_member_use
            FlatButton(
                // ignore: prefer_const_constructors
                color: Colors.cyan[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                onPressed: () {},
                child: Text(
                  'Lanjutkan',
                  style: TextStyle(color: Colors.white),
                ))
          ]),
    );
  }
}
