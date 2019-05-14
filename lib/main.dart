import 'package:flutter/material.dart';
import 'package:text_demo/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {

  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Center(
      child: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
        child: ListView(
      children: <Widget>[
        _buildLogo(),
        _buildTextUN(),
        _buildTextPW(),
        _buildButtonLogin(),
        _buildForgotPW()
      ],
    ));
  }

  Widget _buildLogo() {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Container(
        width: 100,
        height: 100,
        child: Image.asset('assets/images/flutter.png'),
      ),
    );
  }

  Widget _buildTextUN() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 48.0),
      child: TextField(
        style: TextStyle(fontSize: 20),
        autofocus: false,
        decoration: InputDecoration(
            hintText: 'username',
            contentPadding: EdgeInsets.only(
                left: 24.0, right: 24.0, top: 16.0, bottom: 16.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            )),
      ),
    );
  }

  Widget _buildTextPW() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: TextField(
        style: TextStyle(fontSize: 20),
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'password',
            contentPadding: EdgeInsets.only(
                left: 24.0, right: 24.0, top: 16.0, bottom: 16.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            )),
      ),
    );
  }

  Widget _buildButtonLogin() {
    return Padding(
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          Navigator.of(_context).push(MaterialPageRoute(builder: (context) => Welcome()));
        },
        padding: EdgeInsets.all(16.0),
        color: Colors.lightBlueAccent,
        child: Text('Log In',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300)),
      ),
      padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 48.0),
    );
  }

  Widget _buildForgotPW() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: Text(
          "Forgot password?",
          style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
        ),
      ),
    );
  }
}
