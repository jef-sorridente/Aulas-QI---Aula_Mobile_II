import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projeto_final_sushi/Desenvolvedores.dart';
import 'package:projeto_final_sushi/Galeria.dart';
import 'package:projeto_final_sushi/SobreNos.dart';

class Guioza extends StatefulWidget {
  const Guioza({Key? key}) : super(key: key);

  @override
  _GuiozaState createState() => _GuiozaState();
}

class _GuiozaState extends State<Guioza> {
  final List<String> imageList = [
    "images/Nova pasta/Guioza de Porco.webp",
    "images/Nova pasta/Guioza de Porco.webp",
    "images/Nova pasta/Guioza de Porco.webp",
  ];

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
                title: const Text(
                  'Sobre Nós',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                leading: Icon(
                  Icons.people,
                  color: Colors.white,
                  size: 35,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SobreNos()));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(
                  'Galeria',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                leading: Icon(
                  Icons.insert_photo_outlined,
                  color: Colors.white,
                  size: 35,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Galeria()));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: const Text(
                  'Desenvolvedores',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                leading: Icon(
                  Icons.developer_mode_rounded,
                  color: Colors.white,
                  size: 35,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              Desenvolvedores()));
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Container(
              height: 600,
              decoration: BoxDecoration(
                  color: Color(0xFFF9F3EE),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 4,
                      offset: Offset(-2, 2),
                    )
                  ]),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("GUIOZA",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  Text("Descrição...",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic)),
                  CarouselSlider(
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                      ),
                      items: imageList
                          .map((e) => ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.network(e,
                                        height: 250, fit: BoxFit.cover),
                                  ],
                                ),
                              ))
                          .toList()),
                  Text(
                    "R\$ 24,90",
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFD92C2E)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
          ],
        ),
      ),
    );
  }
}
