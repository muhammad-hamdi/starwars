import 'package:flutter/material.dart';
import 'package:starwars/components/character_card.dart';

class CharacterListPage extends StatefulWidget {
  List<dynamic> characters = [];

  CharacterListPage(this.characters);

  @override
  _CharacterListPageState createState() => new _CharacterListPageState();
}

class _CharacterListPageState extends State<CharacterListPage> {
  var _characters = [];

  initState() {
    super.initState();
    for (int i = 0; i < widget.characters.length; i++) {
      var character = widget.characters[i];
      _characters.add(new CharacterCard(character));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return _characters[index];
        },
        itemCount: _characters.length,
      ),
    );
  }
}
