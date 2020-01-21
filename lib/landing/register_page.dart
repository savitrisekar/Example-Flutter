import 'package:basic_flutter/constants.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => new _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    ColorPalette.bgColorGreen,
                    ColorPalette.bgColorBlue
                  ]),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Container(
                color: Colors.orangeAccent,
                width: 100.0,
                height: 30.0,
              ),
              Container(
                color: Colors.pinkAccent,
                width: 100.0,
                height: 30.0,
              )
            ],
          )
        ],
      ),
    );
  }
}
