import 'package:flutter/material.dart';
import 'package:starwars/components/app_bar.dart';
import 'package:starwars/components/characters_list.dart';
import 'package:starwars/services/character_service.dart';

void main() => runApp(new StarWarsApp());

class StarWarsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
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
          new FutureBuilder(
            future: CharacterService.all(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return new CharacterListPage(snapshot.data['results']);
              } else if (snapshot.hasError) {
                return new Text("${snapshot.error}");
              }
              return new Center(
                  heightFactor: 15.0,
                  child: new CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation(Colors.black54),)
              );
            },
          )
        ],
      ),
    );
  }
}
