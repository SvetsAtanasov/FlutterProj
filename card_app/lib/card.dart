import 'package:card_app/card_model.dart';
import 'package:flutter/material.dart';

class PlayerCard extends StatelessWidget {
  final CardModel card;

  const PlayerCard({Key? key, required this.card}) : super(key: key);

  Color get cardColor {
    if (card.suit == 'Hearts' || card.suit == 'Diamonds') {
      return Colors.red;
    }
    if (card.suit == 'Clubs' || card.suit == 'Spades') {
      return Colors.blue;
    }
    return Colors.yellow;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: cardColor, border: Border.all(width: 2, color: Colors.black, style: BorderStyle.solid)),
      width: 100,
      height: 250,
      child: Column(
        children: <Widget>[
          Text(card.suit),
          Text(card.value),
        ],
      ),
    );
  }
}
