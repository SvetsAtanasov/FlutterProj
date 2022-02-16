import 'package:flutter/material.dart';

import './deck.dart';
import './card.dart';

class DeckHandler extends StatelessWidget {
  List<CardObj> _cards = [];

  @override
  Widget build(BuildContext context) {
    constructDeck(_cards);
    Deck deck = Deck(_cards);
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Stack(
        children: getList(deck.deck),
      ))),
    );
  }
}

List<CardObj> getList(List<CardObj> cards) {
  for (var i = 0; i < cards.length; i++) {
    cards[i];
  }

  return cards;
}

List<CardObj> constructDeck(List<CardObj> cards) {
  for (String suit in CardObj.suits) {
    for (int value = CardObj.values[0];
        value <= CardObj.values[CardObj.values.length - 1];
        value++) {
      CardObj card = CardObj(suit, value);
      cards.add(card);
      print(suit);
    }
  }
  return cards;
}
