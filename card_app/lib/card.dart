import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardObj extends StatelessWidget {
  static List<String> suits = ["Hearts", "Diamonds", "Spades", "Clubs"];
  static List<int> values = [2, 3, 4, 5, 6, 7, 8, 9, 10];

  String suit;
  int value;

  CardObj(this.suit, this.value) {
    this.suit = suit;
    this.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 200,
          height: 300,
          color: Colors.blue,
          child: Column(
            children: <Widget>[
              Text(suit),
              Text(value.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
