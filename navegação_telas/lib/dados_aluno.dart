import 'package:flutter/material.dart';
import 'package:primeiro_app/perfil_in.dart';

class DadosAluno extends StatefulWidget {
  const DadosAluno({Key? key}) : super(key: key);

  @override
  _DadosAlunoState createState() => _DadosAlunoState();
}

class _DadosAlunoState extends State<DadosAluno> {
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[

                      //Dados do Aluno
                      Text("Registro Acadêmico:",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text("123456789",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Divider(),
                      //Nome
                      Text("Nome:",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text("JEFERSON PADILHA",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Divider(),
                      //Data de Nascimento
                      Text("Data de Nascimento:",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text("15/6/1999",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Divider(),
                      //Endereço
                      Text("Endereço:",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text("R. Joaquim Nabuco, 264",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Divider(),
                      //Email
                      Text("Email:",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text("jpadilha53@gmail.com",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Divider(),
                      //Telefones
                      Text("Telefones:",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),

                      Text("(51) 9 9999-9999 / (51) 9 9999-9999",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Divider(),
                      //Botão Atualizar
                      /*Container(
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
                                        DadosAluno()));
                            print("btn");
                          },
                          child: Text(
                            "Atualizar",
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
                      ),*/
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
}
