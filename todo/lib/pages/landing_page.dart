import 'package:flutter/material.dart';
import './items_page.dart';
import '../pages/items_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.blueAccent,
        child: new InkWell(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new ItemsPage("Jeffrey's List"))),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Make your todo", style: new TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),),
              new Text("Tap to Start!", style: new TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold))
            ],
          ),
        )
    );
  }

}