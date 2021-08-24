import 'package:flutter/material.dart';
import 'package:projeto_final_sushi/Eduardo.dart';
import 'package:projeto_final_sushi/Gabriel.dart';
import 'package:projeto_final_sushi/Jeferson.dart';

class Desenvolvedores extends StatefulWidget {
  const Desenvolvedores({Key? key}) : super(key: key);

  @override
  _DesenvolvedoresState createState() => _DesenvolvedoresState();
}

class _DesenvolvedoresState extends State<Desenvolvedores> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(
        length: 3,
        vsync: this
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 115,
        backgroundColor: Color(0xFFF9F3EE),
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
        bottom: TabBar(
          labelColor: Color(0xFFD92C2E),
          indicatorColor: Color(0xFFD92C2E),
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: "Jeferson",
            ),
            Tab(
              text: "Gabriel",
            ),
            Tab(
              text: "Eduardo",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Jeferson(),
          Gabriel(),
          Eduardo(),
        ],
      ),
    );
  }
}
