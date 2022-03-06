import 'package:flutter/material.dart';

import './card.dart';

class Player extends StatelessWidget {
  final List<CardObj> playerHand = [];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [...playerHand],
    );
  }
}
