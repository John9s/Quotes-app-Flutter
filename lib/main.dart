import 'package:flutter/material.dart';

import './Quote.dart';

void main() {
  runApp(QuotesApp());
}

class QuotesApp extends StatefulWidget {
  @override
  _QuotesAppState createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {
  var quote = 1;

  List<Map<String, String>> quotes = [
    {'quote': 'Every moment is a fresh beginning', 'author': 'T.S Eliot'},
    {'quote': 'Die with memories, not dreams', 'author': 'Mark Twain'},
    {'quote': 'Everything you can imagine is real', 'author': 'Pablo Picasso'}
  ];

  List<Map<String, String>> quotes2 = [
    {
      'quote': 'Dream as if you\'ll live forever, live as if you\'d die today',
      'author': 'James Dean'
    },
    {
      'quote': 'Never let emotions overpower your intelligence',
      'author': 'Drake'
    },
    {'quote': 'Reality is wrong, dreams are for real', 'author': 'Tupac'}
  ];

  void switchQuotes() {
    setState(() {
      if (quote == 1) {
        quote = 2;
      } else if (quote == 2) {
        quote = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (quote == 1) {
      return Quote(switchQuotes, quotes);
    }
    return Quote(switchQuotes, quotes2);
  }
}
