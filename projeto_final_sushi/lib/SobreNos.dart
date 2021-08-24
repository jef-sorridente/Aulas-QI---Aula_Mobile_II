import 'package:flutter/material.dart';
import 'package:projeto_final_sushi/menuCardapio.dart';

class SobreNos extends StatelessWidget {
  const SobreNos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
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
      ),
      backgroundColor: Color(0xFFD92C2E),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: <Widget>[
          /*Column(
            mainAxisAlignment:MainAxisAlignment.start,
            children: [
              new Image.asset("")
            ],
          ),*/
          Image.asset("images/image_shori.jpg"),
          Padding(padding: EdgeInsets.only(top: 35)),
          ListTile(
            title: const Text(
              "Sobre Nós",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 35)),
          Container(
            color: Color(0xFFF9F3EE),
            padding: EdgeInsets.all(25),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dapibus leo non volutpat volutpat. "
                  "Phasellus rhoncus ultricies blandit. Morbi non rutrum sapien, et ornare dui. Duis vitae ex lacinia, "
                  "pellentesque odio eget, elementum libero. Class aptent taciti sociosqu ad litora torquent per conubia nostra, "
                  "per inceptos himenaeos. Ut rhoncus ut ipsum sed fermentum. Mauris leo justo, pretium tristique finibus id, ornare ac lacus. "
                  "Cras sem nulla, interdum in sapien in, aliquam laoreet velit. Proin commodo nunc in magna mollis tincidunt. Maecenas lobortis quam eget ante placerat, "
                  "at luctus enim interdum. Ut egestas neque eu interdum finibus. Fusce a volutpat velit, in aliquet nunc."
              ,style: TextStyle(fontSize: 16,), textAlign: TextAlign.justify, ),
          )

        ],
      ),
    );
  }
}
