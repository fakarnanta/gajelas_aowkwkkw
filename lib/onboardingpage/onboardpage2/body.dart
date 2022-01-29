import 'dart:html';
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Masukkan Nomor HP',
            style: TextStyle(
              fontFamily: 'plus-jakarta-sans',
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Column(children: <Widget>[
                Container(
                    padding: EdgeInsets.all(16),
                    child: Flexible(
                        child: DropdownButton<String>(
                      items: <String>[
                        'Indonesia',
                        'Singapura',
                        'Malaysia',
                        'Vietnam'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            'Negara/Wilayah',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'plus-jakarta-sans',
                              fontSize: 10,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (_) {
                        OutlinedButton(
                          onPressed: () {},
                          child: Container(),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              width: 5.0,
                              color: Colors.black,
                            ),
                          ),
                        );
                      },
                    ))),
                TextField(
                    decoration: InputDecoration(
                        suffix: Icon(Icons.verified),
                        hintText: "Nomor Telepon",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ))),
                AutoSizeText(
                    'kami akan mengirim kode lewat SMS untuk mengonfirmasi nomor HP kamu',
                    style: TextStyle(
                        fontFamily: 'plus-jakarta-sans',
                        fontWeight: FontWeight.normal,
                        fontSize: 10)),
                MaterialButton(
                  color: Color(0xff06B6D4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  onPressed: () {},
                  child: const Text(
                    "Lanjutkan",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ]))
        ]);
  }
}
