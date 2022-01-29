import 'package:flutter/material.dart';
import 'package:layarin_mvp/onboardingpage/onboardpage2/body.dart';

class OnBoardPage2 extends StatelessWidget {
  const OnBoardPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}
