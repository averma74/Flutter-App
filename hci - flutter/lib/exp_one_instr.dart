import 'package:flutter/material.dart';
import 'exp_one.dart';
import 'exp_two_instr.dart';

class ExpOneInstructionPage extends StatefulWidget{
  @override
  ExpOneInstructionPageState createState() => new ExpOneInstructionPageState();
}

class ExpOneInstructionPageState extends State<ExpOneInstructionPage> {

  int counter = 0;
  List<String> strings =  ["Flutter", "is", "Awesome"];
  String displayedString = "";

  void onPressed(){
    Navigator.push(
      context,
      //MaterialPageRoute(builder: (context) => MyApp()),
      MaterialPageRoute(builder: (context) => ExpTwoInstructionPage()),
    );
    setState(() {
          //displayedString = strings[counter];
          //counter = counter < 2 ? counter + 1 : 0; 
        });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Experiment One Instructions"), backgroundColor: Colors.blue[900]),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("1. This experiment consists of 2 practice cycles for you to get familiar and 16 cycles which collects data.",
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              new Text(""),              
              new Text("2. You will always see two buttons at a time on the screen which are: Source and Target.",
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              new Text(""),              
              new Text("3. The aim is to click the Source button first and then the Target button.",
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              new Text(""),              
              new Text("4. Make sure you click the buttons at your normal pace.",
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              new Text(""),
              new RaisedButton(
                child: new Text("Start", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Colors.white),),
                color: Colors.blue[900],
                onPressed: onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}