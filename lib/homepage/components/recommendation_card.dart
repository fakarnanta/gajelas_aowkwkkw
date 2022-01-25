import 'package:flutter/material.dart';
import 'package:layarin_mvp/homepage/detail_screen.dart';
import 'package:layarin_mvp/constant.dart';

class RecomendsTrip extends StatelessWidget {
  const RecomendsTrip({
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

class RecomendTripCard extends StatelessWidget {
  const RecomendTripCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
    required this.colors,
  }) : super(key: key);

  final String image, title;
  final int colors;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    color: Color(colors),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "$title\n".toUpperCase(),
                              style: Theme.of(context).textTheme.button),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
