import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  static String routeName = "/pages";
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    dynamic deviceWidth;
    dynamic deviceHeight;
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
          child: Container(
        child: Text('Hello World'),
      )),
    );
  }
}
