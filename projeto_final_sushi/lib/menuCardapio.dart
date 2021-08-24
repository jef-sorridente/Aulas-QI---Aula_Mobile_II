import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final_sushi/Combos.dart';
import 'package:projeto_final_sushi/Comentarios.dart';
import 'package:projeto_final_sushi/Desenvolvedores.dart';
import 'package:projeto_final_sushi/Galeria.dart';
import 'package:projeto_final_sushi/Guioza.dart';
import 'package:projeto_final_sushi/Gunkn.dart';
import 'package:projeto_final_sushi/Hossomaki.dart';
import 'package:projeto_final_sushi/SobreNos.dart';

class MenuCardapio extends StatefulWidget {
  const MenuCardapio({Key? key}) : super(key: key);

  @override
  _MenuCardapioState createState() => _MenuCardapioState();
}

class _MenuCardapioState extends State<MenuCardapio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Color(0xFFF9F3EE),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            //Barra de Pesquisa
            Container(
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
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    hintText: "Pesquisar...",
                    border: InputBorder.none),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            //Banners
            Row(
              children: <Widget>[
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width - 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          /*boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.5),
                            blurRadius: 1,
                            offset: Offset(0, 10,),
                          ),
                        ]*/
                        ),
                        padding: EdgeInsets.only(left: 15, bottom: 15),
                        child: Container(
                          child: Image.asset("images/anuncio.jpg"),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 10)),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) => Combos()));
                  },
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFFF9F3EE),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 4,
                            offset: Offset(-2, 2),
                          )
                        ]
                    ),
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "COMBO",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Image.asset("images/Combo1_Salmao.png"),
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 25)),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) => Guioza()));
                  },
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFFF9F3EE),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 4,
                            offset: Offset(-2, 2),
                          )
                        ]
                    ),
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "GUIOZA",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Image.asset("images/Guioza_Porco.png"),
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 25)),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) => Gunkm()));
                  },
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFFF9F3EE),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 4,
                            offset: Offset(-2, 2),
                          )
                        ]
                    ),
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "GUNKN",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Image.asset("images/GunkanEspecial.png"),
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 25)),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) => Hossomaki()));
                  },
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFFF9F3EE),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 4,
                            offset: Offset(-2, 2),
                          )
                        ]
                    ),
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "HOSSOMAKI",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Image.asset("images/HossomakiSalmao.png"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    final color = Color(0xFFF9F3EE);
    return ListTile(
        leading: Icon(icon, color: color, size: 35),
        title: Text(
          text,
          style: TextStyle(color: color, fontSize: 20),
        ),
        hoverColor: Colors.black38,
        onTap: () {});
  }
}
