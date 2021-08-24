import 'package:flutter/material.dart';
import 'package:projeto_final_sushi/CaixaComentarios.dart';
import 'package:projeto_final_sushi/Desenvolvedores.dart';
import 'package:projeto_final_sushi/SobreNos.dart';
import 'firebase_db.dart';

class Comentarios extends StatefulWidget {
  const Comentarios({Key? key}) : super(key: key);

  @override
  _ComentariosState createState() => _ComentariosState();
}
class _ComentariosState extends State<Comentarios> {
  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerComentario = TextEditingController();

  @override
  void iniState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F3EE),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset("images/logo.png",
            width: 250, alignment: Alignment.center),
        centerTitle: true,
        leading: IconButton(
          iconSize: 35,
          color: Color(0xFFD92C2E),
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Builder(builder: (context) {
            return IconButton(
                iconSize: 40,
                color: Color(0xFFD92C2E),
                icon: Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openEndDrawer());
          })
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(45),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue)
                ),
                labelText: "Nome"
            ),
            controller: controllerNome,
          ),
          TextFormField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue)
                ),
                labelText: "Email"
            ),
            controller: controllerEmail,
          ),
          TextFormField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.blue)
                ),
                labelText: "Comentario"
            ),
            controller: controllerComentario,
          ),
          /*ElevatedButton(
            child: Text("Gravar dados"),
            onPressed: () {
              FirebaseDB.firebaseDbInstance.setValue(
                controllerNome.text,
                controllerEmail.text,
                controllerComentario.text,
              );
            },
          ),*/
          TextButton(

            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Muito Obrigado!'),
                content: const Text('Deseja enviar sua avaliação?'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Não',style: TextStyle(color: Color(0xFFD92C2E)),),
                  ),
                  TextButton(
                      child: const Text('Enviar',style: TextStyle(color: Color(0xFFD92C2E),),),
                      onPressed: () {
                        Navigator.pop(context, 'Enviar');
                        FirebaseDB.firebaseDbInstance.setValue(
                          controllerNome.text,
                          controllerEmail.text,
                          controllerComentario.text,
                        );
                        //Limpa os dados após salvar.
                        controllerNome.clear();
                        controllerEmail.clear();
                        controllerComentario.clear();
                      }),
                ],
              ),
            ),
            child: const Text(
              'Enviar Avaliação',
              style: TextStyle(color: Color(0xFFD92C2E), fontSize: 23),
            ),
          ),
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
              'Ver Avaliações',
              style: TextStyle(color: Color(0xFFF9F3EE), fontSize: 16),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => CaixaComentarios()));
            },
          ),
        ],
        ),
      ),
    );
  }
}
