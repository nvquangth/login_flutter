import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _buildHomePage(),
    );
  }

  Widget _buildHomePage() {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            // Add one stop for each color. Stops should increase from 0 to 1
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.blue[500],
              Colors.blue[400],
              Colors.blue[300],
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[_buildAvatar(), _buildTitle(), _buildContent()],
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return Padding(
      padding: const EdgeInsets.only(top: 48.0),
      child: Container(
          width: 100,
          height: 100,
          child: Image.asset('assets/images/flutter.png')),
    );
  }

  Widget _buildTitle() {
    TextStyle _textStyle =
        TextStyle(fontSize: 36.0, letterSpacing: 3.0, color: Colors.white);
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Center(
          child: Text(
        'Welcome Flutter',
        style: _textStyle,
      )),
    );
  }

  Widget _buildContent() {
    TextStyle _textStyle = TextStyle(fontSize: 20.0, color: Colors.white, height: 1.2);
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 48.0),
      child: Center(
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec henderit condimentum mauris id tempor. Praesent eu commodo lacus. praesent edet mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
          textAlign: TextAlign.justify,
          style: _textStyle,
        ),
      ),
    );
  }
}
