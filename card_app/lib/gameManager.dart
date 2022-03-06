import 'package:flutter/material.dart';

import 'playerHand.dart';
import './deck.dart';

class GameManager extends StatefulWidget {
  @override
  State<GameManager> createState() => GameManagerState();
}

class GameManagerState extends State<GameManager> {
  Player player = Player();
  Deck deck = Deck();

  int index = 51;
  int handIndex = 0;

  @override
  Widget build(BuildContext context) {
    void drawCard() {
      setState(() {
        print(deck.cards.length);
        player.playerHand.add(deck.cards[index]);
        deck.cards.removeAt(index);
        index--;
      });
    }

    void playCard() {
      setState(() {
        player.playerHand.removeAt(handIndex);
      });
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          deck,
          Container(
            width: double.infinity,
            height: 250,
            child: Row(children: [
              ...player.playerHand,
            ]),
          ),
          player.playerHand.length < 5
              ? RaisedButton(child: Text("Draw Card"), onPressed: drawCard)
              : const Text("Hand is full"),
          player.playerHand.length != 0
              ? RaisedButton(child: Text("Play Card"), onPressed: playCard)
              : const Text("No more cards to play"),
        ]),
      ),
    );
  }
}

Deck returnDeck(Deck deck) => deck;
