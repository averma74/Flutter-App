import 'package:flutter/material.dart';
import 'exp_one_instr.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new HomePage()
    )
  );
}

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  int counter = 0;
  List<String> strings =  ["Flutter", "is", "Awesome"];
  String displayedString = "";

  void onPressed(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExpOneInstructionPage()),
    );
    setState(() {
          //displayedString = strings[counter];
          //counter = counter < 2 ? counter + 1 : 0;
        });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Welcome to the HCI Experiment"), backgroundColor: Colors.blue[900]),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                'images/pace_logo.jpeg',
                fit: BoxFit.scaleDown,
              ),         
              new Text("",style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),        
              new Text("",style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
              new Text("What best describes you?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
              new Text("",style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
              new RaisedButton(
                child: new Text("Right-Handed", 
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Colors.white),),
                color: Colors.blue[900],
                onPressed: onPressed,
              ),
              new RaisedButton(
                child: new Text("Left-Handed", 
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
