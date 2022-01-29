import 'dart:html';
import 'dart:ui';
import 'package:layarin_mvp/homepage/inbox_page/chat_model.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarsss(),
        body: SingleChildScrollView(
          child: ListView.builder(
            itemCount: ChatModel.data.length,
            itemBuilder: (context, index) {
              ChatModel _model = ChatModel.data[index];
              return Column(
                children: <Widget>[
                  Divider(
                    height: 12.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24.0,
                      backgroundImage: NetworkImage(_model.avatarUrl),
                    ),
                    title: Row(
                      children: <Widget>[
                        Text(
                          _model.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              fontFamily: 'plus-jakarta-sans'),
                        ),
                        Text(
                          _model.datetime,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'plus-jakarta-sans',
                              fontStyle: FontStyle.normal),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      _model.message,
                      style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'plus-jakarta-sans',
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              );
            },
          ),
        ));
  }
}

class AppBarsss extends StatelessWidget implements PreferredSizeWidget {
  const AppBarsss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Pesan',
        style: TextStyle(
            fontFamily: 'plus-jakarta-sans',
            fontWeight: FontWeight.bold,
            fontSize: 24),
        textAlign: TextAlign.left,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}



// ignore: non_constant_identifier_names
 