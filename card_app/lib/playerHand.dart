import 'package:card_app/card_model.dart';
import 'package:flutter/material.dart';

import './card.dart';

class Player extends StatelessWidget {
  final List<CardModel>? playerHand;

  const Player({
    Key? key,
    this.playerHand,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (playerHand == null) return const SizedBox();
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => PlayerCard(card: playerHand![index]),
      itemCount: playerHand!.length,
    );
  }
}
