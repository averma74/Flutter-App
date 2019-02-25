import 'package:flutter/material.dart';
import 'exp_three.dart';

class ExpThreeInstructionPage extends StatefulWidget{
  @override
  ExpThreeInstructionPageState createState() => new ExpThreeInstructionPageState();
}

class ExpThreeInstructionPageState extends State<ExpThreeInstructionPage> {

  void onPressed(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExpThreePage()),
    );
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Experiment Three Instructions"), backgroundColor: Colors.blue[900]),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("1. This experiment consists of clicking on the specified object from the image.",
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              new Text(""),
              new Text("2. There will be only two screens for this experiment.",
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              new Text(""),      
              new Text("3. Make sure you click the buttons at your normal pace.",
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              new Text(""),
              new RaisedButton(
                child: new Text("Start", 
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Colors.white),),
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