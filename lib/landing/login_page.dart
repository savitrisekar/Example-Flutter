import 'package:basic_flutter/constants.dart';
import 'package:basic_flutter/landing/register_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = new GlobalKey<FormState>();
  bool _keepLogin = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
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
          showKeepLogin(),
          showBtnLogin(),
          showForgot(),
          showSignUp(),
        ],
      ),
    ));
  }

  Widget showLogo() {
    return Align(
      alignment: Alignment.topRight,
      child: Image.asset(
        'assets/images/img_login_app.png',
        height: 250.0,
      ),
    );
  }

  Widget showUsernameInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0, left: 24.0, right: 24.0),
      child: new TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.text,
        autofocus: false,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black26,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalette.underlineTextField,
              width: 1.5,
            ),
          ),
          hintText: 'Username',
          hintStyle: TextStyle(
            color: ColorPalette.hintColor,
            fontSize: 14.0,
          ),
        ),
        validator: (value) => value.isEmpty ? 'Username can\'t be empty' : null,
//        onSaved: (value) => _username = value.trim(),
      ),
    );
  }

  Widget showPasswordInput() {
    return Padding(
      padding: const EdgeInsets.only(
          top: 15.0, left: 24.0, right: 24.0, bottom: 10.0),
      child: new TextFormField(
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black26,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorPalette.underlineTextField,
              width: 1.5,
            ),
          ),
          hintText: 'Password',
          hintStyle: TextStyle(
            color: ColorPalette.hintColor,
            fontSize: 14.0,
          ),
        ),
        validator: (value) => value.isEmpty ? 'Password can\'t be wmpty' : null,
      ),
    );
  }

  Widget showKeepLogin() {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: new Container(
//      height: 20.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Theme(
              data: ThemeData(unselectedWidgetColor: Colors.black26),
              child: Checkbox(
                value: _keepLogin,
//              checkColor: ColorPalette.underlineTextField,
//              activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    _keepLogin = value;
                  });
                },
              ),
            ),
            Text(
              'Keep me logged in',
              style: TextStyle(
                color: ColorPalette.validationColor,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showBtnLogin() {
    return Padding(
      padding: const EdgeInsets.only(
          top: 100.0, right: 50.0, left: 50.0, bottom: 10.0),
      child: new Container(
        width: double.infinity,
        child: RaisedButton(
          elevation: 5.0,
          onPressed: () => print('Login berhasil'),
          padding: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          color: ColorPalette.btnLoginColor,
          child: Text(
            'SIGN IN',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget showForgot() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
        ),
        Text(
          'Forgot Password?',
          style: TextStyle(
            color: ColorPalette.validationColor,
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }

  Widget showSignUp() {
    return new Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(top: 50.0),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: 'Don\'t have an account? ',
            style: TextStyle(
              color: ColorPalette.validationColor,
              fontSize: 16.0,
            ),
          ),
          TextSpan(
            text: 'Signup here',
            style: TextStyle(
              color: ColorPalette.textSignUp,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
            recognizer: new TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => new RegisterPage()),
                );
              },
          ),
        ]),
      ),
    );
  }
}
