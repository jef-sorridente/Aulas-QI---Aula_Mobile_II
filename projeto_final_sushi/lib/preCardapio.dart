import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_final_sushi/menuCardapio.dart';

class preCardapio extends StatelessWidget {
  const preCardapio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F3EE),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20)),
            Text(
              "Que bom que você está aqui!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Image.asset(
              "images/sushi_logo.png",
              height: 120,
            ),
            Padding(padding: EdgeInsets.all(20)),
            Text(
              "Escolha o item que deseja e chame um atendente para realizar o seu pedido",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
              ),
            ),

            Padding(padding: EdgeInsets.only(bottom: 80)),
            //Botão "ACESSAR MENU"
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                fixedSize: Size(180, 40),
                primary: Color(0xFFD92C2E),
                elevation: 5,
                shadowColor: Colors.black,
              ),
              child: Text(
                'ACESSAR MENU',
                style: TextStyle(color: Color(0xFFF9F3EE), fontSize: 16),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MenuCardapio()));
              },
            ),

            //Botão "Sair"
            Padding(padding: EdgeInsets.only(bottom: 20)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Color(0xFFD92C2E), width: 2),
                ),
                fixedSize: Size(180, 40),
                primary: Color(0xFFF9F3EE),
                elevation: 5,
                shadowColor: Colors.black,
              ),
              child: Text(
                'SAIR',
                style: TextStyle(color: Color(0xFFD92C2E), fontSize: 16),
              ),
              onPressed: () => exit(0),
            ),
          ],
        ),
      ),
    );
  }
}
