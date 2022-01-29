import 'package:flutter/material.dart';
import 'trip_discover_model.dart';
import 'package:layarin_mvp/homepage/components/recommendation_card.dart';

class TripDiscover extends StatefulWidget {
  const TripDiscover({ Key? key }) : super(key: key);

  @override
  _TripDiscoverState createState() => _TripDiscoverState();
}

class _TripDiscoverState extends State<TripDiscover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      actions: <Widget>[
        IconButton(
          alignment: Alignment.centerLeft,
          onPressed: () {}, 
          icon: Image.asset("assets/icons/back.png")),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(),
            borderRadius: BorderRadius.all(Radius.circular(18))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly;
            children: <Widget>[
                  DropdownButton<String>(
                  items: <String>["Labuan Bajo",].map((String value) {
                    return DropdownMenuItem<String>(
                    value: value,
                    child: Text('Kemana', style: TextStyle(fontFamily: 'plus-jakarta-sans', fontWeight: FontWeight.w200),),
                );
                  }).toList(),
              ),
              Icon(
                icon: Image.asset("assets/icons/ellipse.png"),
              ),
              DropdownButton<String>(
                  items: <String>["Labuan Bajo",].map((String value) {
                    return DropdownMenuItem<String>(
                    value: value,
                    child: Text('Kapan', style: TextStyle(fontFamily: 'plus-jakrata-sans', fontWeight: FontWeight.w200),),
                );
                  }).toList(),
              ),
             
              ]
          ),
               
        ),
        IconButton(
          alignment: Alignment.centerRight,
          onPressed: () {}, 
          icon: Image.asset("assets/icons/history.png")),
           FloatingActionButton.extended(
                     onPressed: () {},
                     icon: Image.asset('assets/icons/map.png'),
                     backgroundColor: Colors.black,
                     extendedTextStyle: TextStyle(
                       fontSize: 14,
                       color: Colors.white
                     ),
                     label: Text("Peta")),
      ],
       
    ),         
    body: TripDiscoverBody(),
    );
  }
}
 
class TripDiscoverBody extends StatefulWidget {
  const TripDiscoverBody({ Key? key }) : super(key: key);

  @override
  _TripDiscoverBodyState createState() => _TripDiscoverBodyState();
}

class _TripDiscoverBodyState extends State<TripDiscoverBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
       ListView.builder( 
                    itemCount: Discover.data.length,
                    itemBuilder: (context, index) {
                     Discover _model = Discover.data[index];
                     return 
                     ListTile(
                       leading: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(18))
                         ),
                         child: Image(image: _model.image),
                       ),
                     title: Text(_model.title,
                     style: TextStyle(
                         fontWeight: FontWeight.normal
                ),),
                     subtitle: Text(_model.subtitle,
                     style: TextStyle(
                       fontWeight: FontWeight.normal
                     ),
                     ),
                     );
                    }),
                 
                        ]
                      ),
                    )
                  
                   

        ]
      )
    );
  }
}

