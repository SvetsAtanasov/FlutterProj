import 'dart:math';

import 'package:card_app/card_model.dart';
import 'package:flutter/material.dart';

import 'playerHand.dart';
import './deck.dart';

const List<String> suits = ["Hearts", "Diamonds", "Spades", "Clubs"];
const List<String> values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'];

class GameManager extends StatefulWidget {
  @override
  State<GameManager> createState() => GameManagerState();
}

class GameManagerState extends State<GameManager> {
  final List<CardModel> playerHand = [];
  final List<CardModel> deck = [];

  int index = 51;
  int handIndex = 0;

  @override
  void initState() {
    super.initState();

    create();
    shuffle();
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
    setState(() {
      print(deck.length);
      playerHand.add(deck[index]);
      deck.removeAt(index);
      index--;
    });
  }

  void playCard() {
    setState(() {
      playerHand.removeAt(handIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Deck(deck),
          Container(
            width: double.infinity,
            height: 250,
            child: Player(playerHand: playerHand),
          ),
          playerHand.length < 5
              ? ElevatedButton(child: const Text("Draw Card"), onPressed: drawCard)
              : const Text("Hand is full"),
          playerHand.length != 0
              ? ElevatedButton(child: const Text("Play Card"), onPressed: playCard)
              : const Text("No more cards to play"),
        ]),
      ),
    );
  }
}

Deck returnDeck(Deck deck) => deck;
