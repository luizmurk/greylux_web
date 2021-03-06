import 'package:flutter/material.dart';

class DefaultStatefulPage extends StatefulWidget {
  @override
  _DefaultStatefulPageState createState() => _DefaultStatefulPageState();
}

class _DefaultStatefulPageState extends State<DefaultStatefulPage> {
  @override
  Widget build(BuildContext context) {
    dynamic deviceWidth;
    dynamic deviceHeight;
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Container();
  }
}
