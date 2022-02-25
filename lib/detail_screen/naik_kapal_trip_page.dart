import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'location_model.dart';
import 'package:location/location.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  LatLng _initialcameraposition = LatLng(20.5937, 78.9629);
  late GoogleMapController _controller;
  final Location _location = Location();

  void _onMapCreated(GoogleMapController _cntlr) {
    _controller = _cntlr;
    _location.onLocationChanged.listen((l) {
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude!, l.longitude!), zoom: 15),
        ),
      );
    });
  }

  void _currentLocation() async {
    final GoogleMapController controller = await _controller;
    LocationData currentLocation;
    var location = Location();
    try {
      currentLocation = await location.getLocation();
    } on Exception {
      currentLocation = null;
    }

    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        bearing: 0,
        target: LatLng(currentLocation.latitude!, currentLocation.longitude!),
        zoom: 17.0,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: _initialcameraposition),
              mapType: MapType.normal,
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
            ),
            SlidingUpPanel(
                panel: AppBar(
                    title: Text(
                  'Tentukan Destinasimu',
                  style: TextStyle(
                      fontFamily: 'plus-jakarta-sans',
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                )),
                body: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29.5),
                            border: Border.all(width: 0.5)),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Tentukan tujuanmu",
                            hintStyle: TextStyle(
                                color: Colors.grey[100],
                                fontSize: 14,
                                fontFamily: 'plus-jakarta-sans'),
                            icon: Image.asset("assets/icons/location.png"),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(29.5),
                            border: Border.all(width: 0.5)),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Tentukan tujuanmu",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontFamily: 'plus-jakarta-sans'),
                            icon: Image.asset("assets/icons/location.png"),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      ListView.builder(
                          itemCount: Locations.data.length,
                          itemBuilder: (context, index) {
                            Locations _model = Locations.data[index];
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                                child: Text(_model.distance,
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        fontFamily: 'plus-jakarta-sans',
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold)),
                              ),
                              title: Text(
                                _model.title,
                                style: TextStyle(
                                    fontFamily: 'plus-jakarta-sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                _model.subtitle,
                                style: TextStyle(fontSize: 14),
                              ),
                            );
                          })
                    ]))
          ],
        ),
      ),
    );
  }
}
