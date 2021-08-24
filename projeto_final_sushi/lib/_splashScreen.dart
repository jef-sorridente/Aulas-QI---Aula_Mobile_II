import 'package:flutter/material.dart';
import 'package:projeto_final_sushi/preCardapio.dart';
import 'package:splashscreen/splashscreen.dart';

class introScreen extends StatefulWidget {
  const introScreen({Key? key}) : super(key: key);

  @override
  _introScreenState createState() => _introScreenState();
}

class _introScreenState extends State<introScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          SplashScreen(
            seconds: 3,
            backgroundColor:Color(0xFFF9F3EE),
            navigateAfterSeconds: preCardapio(),
            loaderColor: Color(0xFFD92C2E),
          ),
          Padding(padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Image.asset("images/logo.png"),
                Padding(padding: EdgeInsets.only(bottom: 60)),
                Text("BEM VINDO AO NOSSO MENU DIGITAL!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
