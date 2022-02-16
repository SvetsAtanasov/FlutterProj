import 'package:flutter/material.dart';

import './card.dart';

List<CardObj> cards = [];

class Deck extends StatelessWidget {
  final List<CardObj> deck;

  Deck(this.deck);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          width: 200,
          height: 200,
          color: Colors.orange,
          child: Column(
            children: <Widget>[Text('s')],
          )),
    ));
  }
}
