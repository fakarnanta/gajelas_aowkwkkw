import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: Image.asset("assets/images/icons")),
          actions: <Widget>[
            IconButton(
                icon: SvgPicture.asset("assets/icons/favorite"),
                onPressed: () {}),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/favorite"))
          ]),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                  itemExtent: 150,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.all(5.0),
                        color: Colors.orangeAccent,
                      ),
                  itemCount: 20),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                margin: EdgeInsets.all(5.0),
                color: Colors.yellow,
              ),
            ),
          )
        ],
      ),
    );
  }
}
