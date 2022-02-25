import 'dart:html';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'place_area.dart';
import 'trip_description_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TripDescription extends StatefulWidget {
  const TripDescription({Key? key}) : super(key: key);

  @override
  _TripDescriptionState createState() => _TripDescriptionState();
}

class _TripDescriptionState extends State<TripDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TripDescription(),
      bottomNavigationBar: BtmNavBar(),
    );
  }
}

class TripDescriptionBody extends StatefulWidget {
  const TripDescriptionBody({Key? key}) : super(key: key);

  @override
  _TripDescriptionBodyState createState() => _TripDescriptionBodyState();
}

class _TripDescriptionBodyState extends State<TripDescriptionBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Stack(children: <Widget>[
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images./"),
          )
        ]),
        Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.bottomRight,
          height: 3,
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
      Divider(),
      Text(
        'Perjalanan',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
        TextButton(onPressed: () {}, child: Text('Hari 1')),
        TextButton(onPressed: () {}, child: Text('Hari 2')),
        TextButton(onPressed: () {}, child: Text('Hari 3')),
      ])
    ]));
  }
}

class LineTimeline extends StatefulWidget {
  const LineTimeline({Key? key}) : super(key: key);

  @override
  _LineTimelineState createState() => _LineTimelineState();
}

class _LineTimelineState extends State<LineTimeline> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      margin: EdgeInsets.only(
        bottom: 30,
      ),
      padding: EdgeInsets.only(
        top: 30,
        left: 70,
        bottom: 30,
      ),
      child: Column(
        children: <Widget>[
          timelineRow("Order Confirmed", "18.00"),
          timelineRow("Order Inprocess", "19.00"),
          timelineRow("Order Processed", ""),
          timelineRow("Order Shipped", ""),
          timelineLastRow("Order Delivered", ""),
        ],
      ),
    );
  }

  Widget timelineRow(String title, String subTile) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 18,
                height: 18,
                decoration: new BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: Text(""),
              ),
              Container(
                width: 3,
                height: 50,
                decoration: new BoxDecoration(
                  color: Colors.lightBlueAccent,
                  shape: BoxShape.rectangle,
                ),
                child: Text(""),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 9,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('${title}\n ${subTile}',
                  style: TextStyle(
                      fontFamily: "regular",
                      fontSize: 14,
                      color: Colors.black54)),
            ],
          ),
        ),
      ],
    );
  }

  Widget timelineLastRow(String title, String subTile) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 18,
                height: 18,
                decoration: new BoxDecoration(
                  color: Colors.lightBlueAccent,
                  shape: BoxShape.circle,
                ),
                child: Text(""),
              ),
              Container(
                width: 3,
                height: 20,
                decoration: new BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.rectangle,
                ),
                child: Text(""),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('${title}\n ${subTile}',
                  style: TextStyle(
                      fontFamily: "regular",
                      fontSize: 14,
                      color: Colors.black54)),
            ],
          ),
        ),
      ],
    );
  }
}

class LocationOnDescription extends StatefulWidget {
  const LocationOnDescription({Key? key}) : super(key: key);

  @override
  _LocationOnDescriptionState createState() => _LocationOnDescriptionState();
}

class _LocationOnDescriptionState extends State<LocationOnDescription> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Area',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text('lorem ipsum dolor amet'),
              Text('lorem ipsum dolor amet'),
              GoogleMap(
                initialCameraPosition:
                    CameraPosition(target: LatLng(l.latitude, l.longitude)),
                mapType: MapType.normal,
                myLocationButtonEnabled: false,
              ),
              Column(children: <Widget>[
                Row(children: <Widget>[
                  Text('lorem ipdum'),
                  IconButton(
                    icon: Icon(Icons.air),
                    onPressed: () {},
                  ),
                  Text('loprem ipsum'),
                ]),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column()),
                Divider(),
                ListView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.symmetric(8),
                )
              ])
            ]));
  }
}

class BtmNavBar extends StatefulWidget {
  const BtmNavBar({Key? key}) : super(key: key);

  @override
  _BtmNavBarState createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.height * 1,
        height: 10,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Rp. 10.000',
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 18,
                                fontWeight: FontWeight.w800)),
                        Text(
                          'per orang',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ])),
              SizedBox(),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {},
                child: Text('Periksa Ketersediaan',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
              ))
            ]));
  }
}
