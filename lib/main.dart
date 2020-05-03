import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(AppName());

class AppName extends StatelessWidget {
  var password = InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.visibility), 
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                            );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,
        primaryColorDark: Colors.yellow[400],// importante para mudar as cores do thema//
      ),
      title: 'Login App',
      home: Scaffold(
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
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail),
                              border: OutlineInputBorder(),
                              labelText: 'E-mail Adress',
                            ),
                          ),
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
                          child: TextField(
                            obscureText: true, // coloca escondigo o texto //
                            decoration: password,
                          ),
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
                          child: FlatButton(
                            padding: EdgeInsets.all(12.0),
                            splashColor: Colors.blue,
                            color: Colors.blue,
                            textColor: Colors.white,
                            disabledColor: Colors.black,
                            disabledTextColor: Colors.grey,
                            child: Text('Login'),
                            onPressed: () {
                              
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
