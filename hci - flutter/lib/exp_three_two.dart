import 'package:flutter/material.dart';
import 'exp_repeat_instr.dart';

class ExpThreeTwoPage extends StatefulWidget{
  @override
  ExpThreeTwoPageState createState() => new ExpThreeTwoPageState();
}

class ExpThreeTwoPageState extends State<ExpThreeTwoPage> {

  void onPressed(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExpRepeatInstructionPage()),
    );
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Experiment Three"), backgroundColor: Colors.blue[900]),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Text("Click on the bull & then press Finish", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              new Text(""),
              new Image.asset(
                'images/mirror_bull.jpeg',
                fit: BoxFit.fitWidth,
              ),      
              new RaisedButton(
                child: new Text("Finish", 
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