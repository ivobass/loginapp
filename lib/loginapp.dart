import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginApp extends StatefulWidget {
  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  final usernameData = TextEditingController();
  final passwordData = TextEditingController();
  bool _showpass = true;

  void _passVisibility() {
    setState(() {
      _showpass = !_showpass;  // inverte o valor o simbolo ! coloca ao contrario// 
    });
  }

  @override
  Widget build(BuildContext context) {
    final username = TextField(
      controller: usernameData,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: Icon(Icons.close),
        ),
        border: OutlineInputBorder(),
        labelText: 'E-mail Adress',
      ),
    );

    final password = TextField(
      controller: passwordData,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: _showpass ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
          onPressed: _passVisibility,
        ),
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
      obscureText: _showpass != "Password"
          ? _showpass
          : false, // coloca escondigo o texto //
    );

    final clickButton = FlatButton(
      padding: EdgeInsets.all(12.0),
      splashColor: Colors.blue,
      color: Colors.blue,
      textColor: Colors.white,
      disabledColor: Colors.black,
      disabledTextColor: Colors.grey,
      child: Text('Login'),
      onPressed: () {
        setState(() {
          if (usernameData != null &&
              usernameData.text == "lorem@ipsum.com" &&
              passwordData != null &&
              passwordData.text == "mySecret43") {
            showDialog(
              context: context,
              child: AlertDialog(
                title: Text('Login Successful'),
              ),
            );
          } else {
            showDialog(
              context: context,
              child: AlertDialog(
                title: Text('Login Failed'),
              ),
            );
          }
        });
      },
    );
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Login',
              style: GoogleFonts.sourceCodePro(
                textStyle: Theme.of(context).textTheme.display1,
                fontSize: 28,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(40, 60, 40, 200),
          child: Card(
            elevation: 10,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Login',
                    style: GoogleFonts.pacifico(
                      textStyle: Theme.of(context).textTheme.display1,
                      fontSize: 28,
                      color: Colors.blue,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: username,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('* Enter your E-mail address here'),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: password,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('* Enter your Password here'),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: clickButton,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
