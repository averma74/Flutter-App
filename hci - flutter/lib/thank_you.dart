import 'package:flutter/material.dart';
import 'main.dart';

class ThankYouPage extends StatefulWidget{
  @override
  ThankYouPageState createState() => new ThankYouPageState();
}

class ThankYouPageState extends State<ThankYouPage> {

  void onPressed(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Thank You"), backgroundColor: Colors.blue[900]),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                'images/thank_you.jpeg',
                fit: BoxFit.fitWidth,
              ),                  
              new Text(""),   
              new Text("Thank you for taking the time and helping us gathering the data.",
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
              new Text(""),
              new RaisedButton(
                child: new Text("Home", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold, color: Colors.white),),
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