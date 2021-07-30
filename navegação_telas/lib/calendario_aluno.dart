import 'package:flutter/material.dart';
import 'package:primeiro_app/perfil_in.dart';

class CalendarioAluno extends StatefulWidget {
  const CalendarioAluno({Key? key}) : super(key: key);

  @override
  _CalendarioAlunoState createState() => _CalendarioAlunoState();
}

class _CalendarioAlunoState extends State<CalendarioAluno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  padding: EdgeInsets.all(40),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )
                  ),
                  child: Column(
                    children: <Widget>[
                      Text("Tabela de Horários",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                      Divider(),
                      criaTabela(),
                      //Botão Voltar
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 70,
                        width: 350,
                        child: RaisedButton(
                          color: Color(0xFFDA251C),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        perfil()));
                            print("btn");
                          },
                          child: Text(
                            "Voltar",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  criaTabela() {
    return Table(
      border: TableBorder(
        horizontalInside: BorderSide(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 2,
        ),
        top: BorderSide(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 2
        ),
        bottom: BorderSide(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 2
        ),
        left: BorderSide(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 2
        ),
        right: BorderSide(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 2
        ),
        verticalInside: BorderSide(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 2,
        ),
      ),
      children: [
        _criarLinhaTable("Disciplina, Turma, Data-Início,Data-Final"),
        _criarLinhaTable("Des. De Aplaicativos II, 1120200000, 23/06/2021,24/08/2021"),
      ],
    );
  }

  _criarLinhaTable(String listaNomes) {
    return TableRow(
      children: listaNomes.split(',').map((name) {
        return Container(

          alignment: Alignment.center,
          child: Text(
            name,
            style: TextStyle(fontSize: 16),
          ),
          padding: EdgeInsets.all(8.0),
        );
      }).toList(),
    );
  }
}