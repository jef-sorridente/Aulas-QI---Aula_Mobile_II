import 'package:flutter/material.dart';

class Jeferson extends StatefulWidget {
  const Jeferson({Key? key}) : super(key: key);

  @override
  _JefersonState createState() => _JefersonState();
}

class _JefersonState extends State<Jeferson> {
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
              child: Image.asset('images/jeferson.jpeg', fit: BoxFit.cover,),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/github.png', width: 50),
                Text('  /jef-sorridente', style: TextStyle(fontSize: 22),)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/instagram.png', width: 50),
                Text('  /jef-sorridente', style: TextStyle(fontSize: 22),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
