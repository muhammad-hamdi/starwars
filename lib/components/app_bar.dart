import 'package:flutter/material.dart';

class StarWarsAppBar extends StatelessWidget {
  var title;

  StarWarsAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(top: 16.0),
      height: 70.0,
      child: new Center(
        child: new Text(
          "Star Wars",
          style: new TextStyle(
            color: Colors.yellowAccent,
            fontSize: 28.0,
            fontFamily: 'Starjedi'
          ),
        ),
      ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              Colors.black54,
              Colors.black87,
            ],
        )
      ),
    );
  }

}