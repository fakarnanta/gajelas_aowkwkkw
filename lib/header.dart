import 'package:flutter/material.dart';
import 'package:layarin_mvp/homepage/detail_screen.dart';
import 'package:layarin_mvp/homepage/components/search_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.2,
            child: Stack(children: <Widget>[
              Container(
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Image.asset('assets/images/kapal').image,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstATop),
                    ),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36))),
                child: Column(children: <Widget>[
                  const SearchBar(),
                  AutoSizeText(
                      'Anda bingung mau kemana n/ Kami siap membantu anda',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  MaterialButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    onPressed: () {},
                    child: const Text(
                      "Eksplor tujuan",
                      style: TextStyle(color: Colors.lightGreen),
                    ),
                  )
                ]),
              )
            ]),
          )
        ]);
  }
}

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const ProductDescription(),
                ));
              },
              icon: const ImageIcon(AssetImage("images/icons/kapal1"))),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const ProductDescription(),
                ));
              },
              icon: const ImageIcon(AssetImage("images/icons/kapal2"))),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const ProductDescription(),
                ));
              },
              icon: const ImageIcon(AssetImage("images/icons/kapal3"))),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const ProductDescription(),
                ));
              },
              icon: const ImageIcon(AssetImage("images/icons/kapal3")))
        ]);
  }
}
