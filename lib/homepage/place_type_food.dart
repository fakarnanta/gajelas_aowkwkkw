import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:layarin_mvp/homepage/place_area.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:layarin_mvp/homepage/trip_description.dart';

class PlaceTypeFood extends StatelessWidget {
  const PlaceTypeFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlaceTypeBody(),
      bottomNavigationBar: BtmNavBar(),
    );
  }
}

class PlaceTypeBody extends StatefulWidget {
  const PlaceTypeBody({Key? key}) : super(key: key);

  @override
  _PlaceTypeBodyState createState() => _PlaceTypeBodyState();
}

class _PlaceTypeBodyState extends State<PlaceTypeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Stack(children: <Widget>[
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Image.asset(""),
          )
        ]),
        Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.bottomRight,
          height: 3,
          width: 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18))),
          child: Text('1/100'),
        ),
        Image.asset(
          "assets/images/komodo.png",
          fit: BoxFit.fitWidth,
        ),
      ]),
      AutoSizeText(
        'Lorem Ipsum Dolor Amet',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
      ),
      RatingBar(
        initialRating: 3,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        ratingWidget: RatingWidget(
          full: Icon(
            Icons.circle,
            color: Colors.lightBlue,
          ),
          half: Image.asset('assets/heart_half.png'),
          empty: Image.asset('assets/heart_border.png'),
        ),
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        onRatingUpdate: (rating) {
          print(rating);
        },
      ),
      DescriptionWithMoreBtn(text: 'lorem ipsum dolor amet'),
      SizedBox(),
      Text('Features',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
      Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: Column(children: <Widget>[
            Text(
              'Fitur 1',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Text(
              'Fitur 2',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Text(
              'Fitur 3',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Text(
              'Fitur 4',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ])),
      Divider(),
      Padding(
        padding: EdgeInsets.only(left: 5),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Sajian',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: 10,
                      width: 10,
                      color: Colors.grey[200],
                    ),
                  ),
                  title: AutoSizeText(),
                  subtitle: AutoSizeText(data),
                )
              ]),
              SizedBox(),
              Divider(),
              Text('Area',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text(
                'Alamat',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Text(
                _text,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              GoogleMap(
                initialCameraPosition: CameraPosition(target: current),
                mapType: MapType.normal,
                myLocationButtonEnabled: false,
              ),
            ]),
      )
    ]));
  }
}
