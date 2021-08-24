// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final_sushi/Comentarios.dart';
import 'package:projeto_final_sushi/_splashScreen.dart';
import 'FirebaseCustom.dart';

void main() {
  FirebaseHelper.initDatabase();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: introScreen(),
    //home: Comentarios(),
  ));
}