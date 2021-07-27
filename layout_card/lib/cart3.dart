import 'package:flutter/material.dart';
import 'package:layout_card/LayoutCard.dart';

class car3 extends StatefulWidget {
  const car3({Key? key}) : super(key: key);

  @override
  _car3State createState() => _car3State();
}

class _car3State extends State<car3> {
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
                    //borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height / 1.2,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset('assets/img/car3.jpg'),
                        height: MediaQuery.of(context).size.height / 2.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        height: MediaQuery.of(context).size.height / 2.8,
                        width: 350,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                              "Vivamus odio dui, congue ac molestie imperdiet, tempor et neque. "
                              "Nam risus erat, ullamcorper eu commodo vitae, varius id nibh. "
                              "Praesent ultricies justo at gravida lobortis.",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 70,
                        width: 350,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LayoutCard()));
                            print("btn");
                          },
                          child: Text(
                            "Voltar",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                      )
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
