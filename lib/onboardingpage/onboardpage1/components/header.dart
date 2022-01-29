import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: SizedBox(
        height: size.height * 0.5,
        child: Stack(children: <Widget>[
          Container(
            height: size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.asset('assets/images/header.png').image)),
            child: AutoSizeText(
              'Beragam destinasi siap untuk kamu jelajahi',
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'plus-jakarta-sans'),
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            MaterialButton(
              color: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              onPressed: () {},
              child: const Text(
                "Lewati",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'plus-jakarta-sans',
                    fontWeight: FontWeight.bold),
              ),
            )
          ])
        ]),
      ),
    );
  }
}
