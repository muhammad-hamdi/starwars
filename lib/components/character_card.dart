import 'package:flutter/material.dart';
import 'package:starwars/utils/helpers.dart';

class CharacterCard extends StatelessWidget {
  final character;

  CharacterCard(this.character);

  _keyStyles() {
    return new TextStyle(
      fontSize: 20.0,
      color: Colors.white,
      fontWeight: FontWeight.bold
    );
  }

  _valueStyles() {
    return new TextStyle(
      fontSize: 20.0,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
      child: new Container(
        padding: new EdgeInsets.symmetric(vertical: 16.0, horizontal: 5.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(12.0),
          color: Colors.black87,
        ),
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Text("${Helper.capitalize(character.keys.toList()[0].toString())}: ", style: _keyStyles(),),
                new Text(character['name'], style: _valueStyles(),),
              ],
            ),
            new Row(
              children: <Widget>[
                new Text("${Helper.capitalize(character.keys.toList()[1].toString())}: ", style: _keyStyles(),),
                new Text(character['height'], style: _valueStyles(),)
              ],
            ),
            new Row(
              children: <Widget>[
                new Text("${Helper.capitalize(character.keys.toList()[2].toString())}: ", style: _keyStyles(),),
                new Text(character['mass'], style: _valueStyles(),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
