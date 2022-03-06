import 'package:flutter/material.dart';

class CardObj extends StatelessWidget {
  static List<String> suits = ["Hearts", "Diamonds", "Spades", "Clubs"];
  static List<int> values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];

  String suit;
  int value;

  CardObj(this.suit, this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
              width: 2, color: Colors.black, style: BorderStyle.solid)),
      width: 150,
      height: 250,
      child: Column(
        children: <Widget>[
          Text(suit),
          value >= 2 && value <= 10
              ? Text(value.toString())
              : Text(setCardName(value)),
        ],
      ),
    );
  }
}

String setCardName(int value) {
  String name;

  if (value == 11) {
    name = "J";
  } else if (value == 12) {
    name = "Q";
  } else if (value == 13) {
    name = "K";
  } else {
    name = "A";
  }

  return name;
}
