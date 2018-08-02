import 'package:flutter/material.dart';
import 'package:starwars/utils/helpers.dart';

class CharacterCard extends StatelessWidget {
  final character;

  CharacterCard(this.character);

  _keyStyles() {
    return new TextStyle(
        fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold);
  }

  _valueStyles() {
    return new TextStyle(
      fontSize: 20.0,
      color: Colors.white,
    );
  }

  _propKeyStyles() {
    return new TextStyle(
        fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold);
  }

  _propValueStyles() {
    return new TextStyle(
      fontSize: 14.0,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialButton(
      padding: new EdgeInsets.all(0.0),
      onPressed: () async {
        print(character['name']);
      },
      child: new Padding(
        padding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
        child: new Container(
          padding: new EdgeInsets.symmetric(vertical: 16.0, horizontal: 5.0),
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(12.0),
            gradient: new LinearGradient(
                colors: [
                  Colors.black87,
                  Colors.black54,
                ],
                begin: new FractionalOffset(0.0, 0.0),
                end: new FractionalOffset(1.0, 1.0),
                stops: [0.6, 1.0],
                tileMode: TileMode.clamp
            ),
          ),
          child: new Row(
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.only(left: 10.0, right: 10.0),
                child: new CircleAvatar(
                  backgroundImage: new AssetImage(
                    "assets/images/${character['name']}.jpg",
                  ),
                  radius: 50.0,
                ),
              ),
              new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Center(
                        child: new Text(
                          character['name'],
                          style: _valueStyles(),
                        ),
                      )
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Text(
                        "${Helper.capitalize(character.keys.toList()[2].toString())}: ",
                        style: _propKeyStyles(),
                      ),
                      new Text(
                        character['mass'],
                        style: _propValueStyles(),
                      ),
                      new Container(width: 20.0,),
                      new Text(
                        "${Helper.capitalize(character.keys.toList()[1].toString())}: ",
                        style: _propKeyStyles(),
                      ),
                      new Text(
                        character['height'],
                        style: _propValueStyles(),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
