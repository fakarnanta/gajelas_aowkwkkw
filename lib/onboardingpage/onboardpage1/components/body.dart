import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:layarin_mvp/onboardingpage/onboardpage1/components/header.dart';
import 'package:layarin_mvp/onboardingpage/onboardpage1/components/signinbutton.dart';
import 'package:flutter/cupertino.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[Header(), SignInButton()]);
  }
}
