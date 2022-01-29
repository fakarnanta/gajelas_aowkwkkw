import 'dart:html';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layarin_mvp/homepage/components/recommendation_card.dart';

class PlaceArea extends StatelessWidget {
  const PlaceArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlaceAreaBody(),
      appBar: AppBar(),


    );
  }
}

class AppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset("assets/icons/back.png",
          alignment: Alignment.centerLeft,),
              Text(
                "Nusa Tenggara Timur, ID",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2F2F3E)),
                textAlign: TextAlign.center,
              ),
              Image.asset("assets/icons/search.png",
              alignment: Alignment.centerRight,)
            ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class PlaceAreaBody extends StatelessWidget {
  const PlaceAreaBody ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset("assets/images/komodo.png",
        fit: BoxFit.fitWidth,
        ),
        AutoSizeText('Lorem Ipsum Dolor Amet',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 24
        ),
        ),
        DescriptionWithMoreBtn(text: 'lorem ipsum dolor amet'),
        RecommendationTitleCard(title: 'Transportasi'),
        Transportation()
        


        

        
      ]
      )
    );
  }
}

class DescriptionWithMoreBtn extends StatefulWidget {

  final String text;

  DescriptionWithMoreBtn({Key? key, 
    required this.text
  }) : super(key: key)

  @override
  _DescriptionWithMoreBtnState createState() => _DescriptionWithMoreBtnState();
}

class _DescriptionWithMoreBtnState extends State<DescriptionWithMoreBtn> {
   late String firstHalf;
  late String secondHalf;

  bool flag = true;
   @override
  void initState() {
    super.initState();

    if (widget.text.length > 50) {
      firstHalf = widget.text.substring(0, 50);
      secondHalf = widget.text.substring(50, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          AutoSizeText(
            'lorem impsumn'
          ),
          ElevatedButton.icon(onPressed: () {}, 
          style: ButtonStyle(
           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.black)
            ) 
           ) 
          ),
          icon: Image.asset("assets/icons/location.png",
          alignment: Alignment.centerLeft,),
          label: Text('Lihat Peta'))
        ]
      )

    );
  }
}

class RecommendationTitleCard extends StatelessWidget {
  const RecommendationTitleCard({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Column(
        children: <Widget>[
          Row(
          children: <Widget>[
            Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: 5.0),
              height: 7,
              color: Colors.lightBlue.withOpacity(0.2),
            ),
          ),
          Spacer(flex: 2,),
          TextButton(
          onPressed: () {}, 
          child: Text('Semua',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[350]
          ),)
          )]
          ),
          Text(
            'aktivitas yang dapat kamu lakukan di NTT',
            style: TextStyle(
              fontSize: 12
            ),
          )
        ],
      ),
    );
  }
}

class Transportation extends StatelessWidget {
  const Transportation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: <Widget>[
        RecomendTripCard(
          image: "assets/images/pulau_komodo.jpg",
          title: "Pulau Komodo",
          colors: (0xff2459b5),
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDescription(),
              ),
            );
          },
        ),
        RecomendTripCard(
          image: "assets/images/bukit_cinta.jpg",
          title: "Bukit Cinta",
          colors: (0xffc71019),
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDescription(),
              ),
            );
          },
        ),
        RecomendTripCard(
          image: "assets/images/giri_laba.jpg",
          title: "Giri Laba",
          colors: (0xff006400),
          press: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDescription(),
                ));
          },
        )
      ]),
    );
  }
}



