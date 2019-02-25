import 'package:flutter/material.dart';
import 'exp_three_two.dart';

class ExpThreePage extends StatefulWidget{
  @override
  ExpThreePageState createState() => new ExpThreePageState();
}

class ExpThreePageState extends State<ExpThreePage> {

  void onPressed(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ExpThreeTwoPage()),
    );
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Experiment Three"), backgroundColor: Colors.blue[900]),
      body: new ListView(
        children: <Widget>[
          new Image.asset(
            'images/bull.jpeg',
            fit: BoxFit.cover
          ),
          new Text("",style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          new Text("",style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Text("Click on the bull & then press Next",style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            ],
          ),
          new Text("",style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          new Text("",style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new RaisedButton(
                child: new Text("Next", 
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Colors.white),),
                color: Colors.blue[900],
                onPressed: onPressed,
              ),
            ]
          ),
        ],
      )
    );
  }
}