import 'package:flutter/material.dart';
import 'package:my_questions/pages/Quiz.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(
          // ignore: prefer_const_constructors
          child: Text(
            "Programmer Questions",
            style: TextStyle(fontFamily: 'Helvetica'),
          ),
        ),
        backgroundColor: Color(0xFF9C27B0),
      ),
      body: Column(children: [
        Container(
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            width: double.infinity,
            child: Text(
              "Bem Vindo",
              style: TextStyle(fontFamily: 'Helvetica', fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
        Container(
          child: Image.asset("assets/images/8bul.png"),
        ),
        Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Quiz()),
                );
              },
              child: Text("iniciar"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  // ignore: prefer_const_constructors
                  textStyle: TextStyle(color: Colors.white, fontFamily: "Helvetica", fontSize: 40))),
        ),
      ]),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 40.0,
            width: double.infinity,
            color: Colors.purple,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              "Direitos pertencentes a SYNK.SX",
              style: TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
