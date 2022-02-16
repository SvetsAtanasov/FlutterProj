import 'package:flutter/material.dart';

import './deckHandler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DeckHandler deckHandler = DeckHandler();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: deckHandler,
      ),
    );
  }
}
