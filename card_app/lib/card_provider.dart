import 'dart:math';

import 'package:card_app/card_model.dart';
import 'package:flutter/material.dart';

class CardProvider extends ChangeNotifier {
  List<String> suits = ["Hearts", "Diamonds", "Spades", "Clubs"];
  List<String> values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'];

  final List<CardModel> playerHand = [];
  final List<CardModel> deck = [];

  int index = 51;
  int handIndex = 0;

  void init() {
    create();
    shuffle();
    notifyListeners();
  }

  void create() {
    for (String suit in suits) {
      for (String value in values) {
        final CardModel card = CardModel(
          suit: suit,
          value: value,
        );
        deck.add(card);
      }
    }
  }

  void shuffle() {
    for (int i = deck.length - 1; i > 0; i--) {
      int oldValue = Random().nextInt(i + 1);
      var newValue = deck[oldValue];
      deck[oldValue] = deck[i];
      deck[i] = newValue;
    }
  }

  void drawCard() {
    playerHand.add(deck[index]);
    deck.removeAt(index);
    index--;
    notifyListeners();
  }

  void playCard() {
    playerHand.removeAt(handIndex);
    notifyListeners();
  }
}
