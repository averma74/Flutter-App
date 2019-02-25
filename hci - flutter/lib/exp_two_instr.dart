import 'package:flutter/material.dart';
import 'exp_two.dart';

class ExpTwoInstructionPage extends StatefulWidget{
  @override
  ExpTwoInstructionPageState createState() => new ExpTwoInstructionPageState();
}

class ExpTwoInstructionPageState extends State<ExpTwoInstructionPage> {

  void onPressed(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExpTwoPage()),
    );
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Experiment Two Instructions"), backgroundColor: Colors.blue[900]),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("1. This experiment consists of selecting the specified item from the dropdown list.",
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