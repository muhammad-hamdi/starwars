import 'package:flutter/material.dart';
import 'package:starwars/components/app_bar.dart';
import 'package:starwars/components/characters_list.dart';

void main() => runApp(new StarWarsApp());

class StarWarsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Star Wars',
      home: new HomePage(title: 'Star Wars'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new StarWarsAppBar(widget.title),
          new CharacterListPage([{
            "name": "Luke Skywalker",
            "height": "172",
            "mass": "77",
          },
          {
            "name": "C-3PO",
            "height": "167",
            "mass": "75",
          }]),
        ],
      ),
    );
  }
}
