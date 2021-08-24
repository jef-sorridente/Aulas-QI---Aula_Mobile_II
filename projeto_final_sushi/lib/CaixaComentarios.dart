import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final_sushi/Comentarios.dart';
import 'package:projeto_final_sushi/Desenvolvedores.dart';
import 'package:projeto_final_sushi/SobreNos.dart';

class CaixaComentarios extends StatefulWidget {
  const CaixaComentarios({Key? key}) : super(key: key);

  @override
  _CaixaComentariosState createState() => _CaixaComentariosState();
}

class _CaixaComentariosState extends State<CaixaComentarios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F3EE),
      endDrawer: Drawer(
        child: Material(
          color: Color(0xFFD92C2E),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[
              const SizedBox(
                height: 35,
              ),
              ListTile(
                title: const Text('Sobre Nós', style: TextStyle(color: Colors.white, fontSize: 20),),
                leading: Icon(Icons.people, color: Colors.white, size: 35,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) => SobreNos()));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text('Comentários', style: TextStyle(color: Colors.white, fontSize: 20),),
                leading: Icon(Icons.add_comment_outlined, color: Colors.white, size: 35,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) => Comentarios()));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text('Desenvolvedores', style: TextStyle(color: Colors.white, fontSize: 20),),
                leading: Icon(Icons.developer_mode_rounded, color: Colors.white, size: 35,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) => Desenvolvedores()));
                },
              ),
              Divider()
            ],
          ),
        ),
      ),
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
     body: Center(
        child:
       Text('Teste'),
     ),
    );
  }
}
