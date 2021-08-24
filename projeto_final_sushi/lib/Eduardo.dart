import 'package:flutter/material.dart';

class Eduardo extends StatefulWidget {
  const Eduardo({Key? key}) : super(key: key);

  @override
  _EduardoState createState() => _EduardoState();
}

class _EduardoState extends State<Eduardo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: 300,
              height: 500,
              child: Image.asset('images/eduardo.jpeg', fit: BoxFit.cover),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/github.png', width: 50),
                Text('  /EduardoHaubert', style: TextStyle(fontSize: 22),)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/instagram.png', width: 50),
                Text('  /eduardo_haubert', style: TextStyle(fontSize: 22),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
