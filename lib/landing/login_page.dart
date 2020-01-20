import 'package:basic_flutter/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            _showForm(),
          ],
        ),
      ),
    );
  }

  Widget _showForm() {
    return new Container(
        child: new Form(
      key: _formKey,
      child: new ListView(
        shrinkWrap: true,
        children: <Widget>[
          showLogo(),
          showUsernameInput(),
          showPasswordInput(),
        ],
      ),
    ));
  }

  Widget showLogo() {
    return Align(
      alignment: Alignment.topRight,
      child: Image.asset('assets/images/img_login_app.png'),
    );
  }

  Widget showUsernameInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: new InputDecoration(
          hintText: 'Username',
        ),
        validator: (value) => value.isEmpty ? 'Username can\'t be empty' : null,
//        onSaved: (value) => _username = value.trim(),
      ),
    );
  }

  Widget showPasswordInput() {
    return Padding(
      padding: const EdgeInsets.only(
          top: 15.0, left: 16.0, right: 20.0, bottom: 20.0),
      child: new TextFormField(
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalette.underlineTextField,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black26,
              width: 3.0,
            ),
          ),
          hintText: 'Password',
          hintStyle: TextStyle(color: ColorPalette.hintColor),
        ),
        validator: (value) => value.isEmpty ? 'Password can\'t be wmpty' : null,
      ),
    );
  }
}
