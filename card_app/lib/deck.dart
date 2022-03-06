import 'package:flutter/material.dart';

import './card.dart';
import 'dart:math';

class Deck extends StatelessWidget {
  final List<CardObj> cards = [];

  void create() {
    for (String suit in CardObj.suits) {
      for (int value = 2; value <= 14; value++) {
        CardObj card = CardObj(suit, value);
        cards.add(card);
      }
    }
  }

  void shuffle() {
    for (int i = cards.length - 1; i > 0; i--) {
      int oldValue = Random().nextInt(i + 1);
      var newValue = cards[oldValue];
      cards[oldValue] = cards[i];
      cards[i] = newValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    create();
    shuffle();

    return Stack(
      children: [...cards],
    );
  }
}
