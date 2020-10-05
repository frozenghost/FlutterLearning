import 'package:flutter/material.dart';
import 'package:xtools/DicePage.dart';

void main() {
  runApp(XToolApp());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/logo.jpg'),
            ),
            Text(
              'Flynn Huang',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Indie Flower',
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontSize: 20,
                color: Colors.teal[100],
                fontWeight: FontWeight.bold,
                fontFamily: 'Work Sans',
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+86 12312312312',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Work Sans',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'gg@gmail.com',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Work Sans',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton(
              color: Colors.white,
              textColor: Colors.teal,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.pushNamed(context, '/dice');
              },
              child: Text(
                "Flat Button",
                style: TextStyle(
                  fontFamily: 'Work Sans',
                  fontSize: 20.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class XToolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/dice': (BuildContext context) => DicePage()
      },
    );
  }
}
