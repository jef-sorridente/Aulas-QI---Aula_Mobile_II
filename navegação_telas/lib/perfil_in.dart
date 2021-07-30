import 'package:flutter/material.dart';
import 'package:primeiro_app/calendario_aluno.dart';
import 'package:primeiro_app/dados_aluno.dart';
import 'package:primeiro_app/notas_faltas.dart';

class perfil extends StatefulWidget {
  const perfil({Key? key}) : super(key: key);

  @override
  _perfilState createState() => _perfilState();
}

class _perfilState extends State<perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6E6E6),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: <Widget>[
              //Nome do Aluno
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Olá,",
                          style: TextStyle(fontSize: 25, color: Colors.black45),
                        ),
                        Text(
                          "Aluno",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Color(0xFFDA251C),
                    )
                  ],
                ),
              ),
              //Barra de Pesquisa
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.only(
                          left: 20,
                          top: 15,
                          right: 20,
                          bottom: 15,
                        ),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFFDA251C),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        hintText: "Pesquisar",
                        border: InputBorder.none),
                  ),
                ),
              ),
              //Titulo
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Educacional",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              //Seus Dados
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height / 2.4,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 3.5,
                        child: Image.asset(
                          'assets/imagens/aluna.png',
                            width: MediaQuery.of(context).size.width / 2.2,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          color: Color(0xFFDA251C),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DadosAluno()));
                          },
                          child: Text(
                            "Seus Dados",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Notas
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height / 2.4,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 3.5,
                        child: Image.asset(
                          'assets/imagens/cafe.png',
                          width: MediaQuery.of(context).size.width / 2.2,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          color: Color(0xFFDA251C),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NotasFaltas()));
                          },
                          child: Text(
                            "Notas e Faltas",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Horarios
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height / 2.4,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 3.5,
                        child: Image.asset(
                          'assets/imagens/calendario.png',
                          width: MediaQuery.of(context).size.width / 2.2,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          color: Color(0xFFDA251C),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        CalendarioAluno()));
                          },
                          child: Text(
                            "Quadro de Horários",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
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
}
