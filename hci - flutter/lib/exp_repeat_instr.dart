import 'package:flutter/material.dart';
import 'exp_one_instr.dart';

class ExpRepeatInstructionPage extends StatefulWidget{
  @override
  ExpRepeatInstructionPageState createState() => new ExpRepeatInstructionPageState();
}

class ExpRepeatInstructionPageState extends State<ExpRepeatInstructionPage> {

  void onPressed(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExpOneInstructionPage()),
    );
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Repeat Experiments Instructions"), backgroundColor: Colors.blue[900]),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Thank you for completing the three experiments with your dominant hand!",
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
              new Text(""),
              new Text("Now please complete the experiments again using your non-dominant hand!",
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
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