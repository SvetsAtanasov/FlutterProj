import 'package:card_app/card_model.dart';
import 'package:flutter/material.dart';

import './card.dart';
import 'dart:math';

class Deck extends StatelessWidget {
  final List<CardModel> cards;

  const Deck(this.cards);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: cards.map((card) => PlayerCard(card: card)).toList(),
    );
  }
}
