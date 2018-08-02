import 'package:flutter/material.dart';

class StarWarsAppBar extends StatelessWidget {
  var title;
  final double barHeight = 66.0;

  StarWarsAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return new Container(
      padding: new EdgeInsets.only(top: 16.0),
      height: statusBarHeight + barHeight,
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
            begin: new FractionalOffset(0.0, 0.0),
            end: new FractionalOffset(0.5, 0.0),
            stops: [0.0, 0.5],
            tileMode: TileMode.clamp
        )
      ),
    );
  }

}