import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final_sushi/Comentarios.dart';
import 'firebase_db.dart';
import 'Comentarios.dart';
import 'ComentariosClass.dart';
import 'FirebaseCustom.dart';

// @dart=2.9

class MyListData extends StatefulWidget {
  const MyListData({Key? key}) : super(key: key);

  @override
  _MyListDataState createState() => _MyListDataState();
}

class _MyListDataState extends State<MyListData> {
  String path = "comentarios";
  late int numItens;

  @override
  void initState() {
    getListaComentario();
    super.initState();
  }

  Future<List> getListaComentario() async {
    List<Comentarios> listaComentario = [];
    DatabaseReference dataRef = Fire.database.ref(path);
    List data = await getList(dataRef);
    numItens = data.length;
    for(int i=0; i<data.length; i++) {
      DataSnapshot dadoAtual = data[i];
      Comentario coment = Comentario.fromJson(dadoAtual.toJson());
      //listaComentario.add(coment);
    }
    return listaComentario;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getListaComentario(),
      builder: (context, snapshot){
        if (snapshot.connectionState != ConnectionState.done) {
          return Center(
            child: Container(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                  backgroundColor: Colors.blue
              ),
            ),
          );
        } else {
          return Scaffold(
            body: ListView.builder(
                itemCount: numItens,
                itemBuilder: (context, value) {
                  return ListTile(
                     // title: Text(snapshot.data[value].nome),
                      //subtitle: Text("R\$ ${snapshot.data[value].comentario}"),
                      isThreeLine: true,
                  );
                }
            )
          );
        }
      }
    );
  }
}