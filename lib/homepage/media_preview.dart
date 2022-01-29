import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MediaPreview extends StatefulWidget {
  const MediaPreview({Key? key}) : super(key: key);

  @override
  _MediaPreviewState createState() => _MediaPreviewState();
}

class _MediaPreviewState extends State<MediaPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Image.asset("assets/images/back.png"),
              onPressed: () {},
            ),
            actions: <Widget>[
              Text('',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14))
            ]),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FittedBox(child: Image.asset(""), fit: BoxFit.fill),
              AutoSizeText(
                '',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              ListView.builder(
                  itemExtent: 150,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.all(5.0),
                        color: Colors.grey[200],
                        height: 10,
                        width: 10,
                      ),
                  itemCount: 20),
            ]));
  }
}
