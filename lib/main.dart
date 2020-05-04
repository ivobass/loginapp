import 'package:flutter/material.dart';
import 'package:loginapp/loginapp.dart';


void main() => runApp(AppName());

class AppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
        primaryColorDark:
            Colors.yellow[400], // importante para mudar as cores do thema//
      ),
      title: 'Login App',
      home: LoginApp(),
    );
  }
}

