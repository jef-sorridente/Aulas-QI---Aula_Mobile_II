import 'package:flutter/material.dart';

class Gabriel extends StatefulWidget {
  const Gabriel({Key? key}) : super(key: key);

  @override
  _GabrielState createState() => _GabrielState();
}

class _GabrielState extends State<Gabriel> {
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
              child: Image.asset('images/gabriel.jpg', fit: BoxFit.cover,),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/github.png', width: 50),
                Text('  /gabe-brum', style: TextStyle(fontSize: 22),)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('images/instagram.png', width: 50),
                Text('  /gabriel_bluz', style: TextStyle(fontSize: 22),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
