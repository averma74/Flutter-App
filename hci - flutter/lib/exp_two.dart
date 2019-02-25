import 'package:flutter/material.dart';
import 'exp_two_two.dart';

class ExpTwoPage extends StatefulWidget{
  @override
  _State createState() => new _State();
}

class _State extends State<ExpTwoPage> {

    String _value = null;
    List<String> _values = new List<String>();

    @override
    void initState(){
      _values.addAll(["Produce", "Dairy", "Bakery", "Grains"]);
      _value = _values.elementAt(0);
    }

    void _onChanged(String value){
      setState(() {
              _value = value;
            });
    }

    void onPressed(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ExpTwoTwoPage()),
      );
      setState(() {
          //displayedString = strings[counter];
          //counter = counter < 2 ? counter + 1 : 0;
          });
    }

    Widget build(BuildContext context){
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('Experiment Two'),
          backgroundColor: Colors.blue[900],
        ),
        body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new DropdownButton(
                value: _value,
                items: _values.map((String value){
                  return new DropdownMenuItem(
                    value: value,
                    child: new Row(
                      children: <Widget>[
                        new Icon(Icons.cake),
                        new Text('${value}', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold))
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (String value){_onChanged(value);},
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("Select Bakery & click Next",style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
              ],),
              new Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
          ),
        ),
      );
    }
}