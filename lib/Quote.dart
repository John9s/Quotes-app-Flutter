import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  List quoteList;
  VoidCallback btnFunction;

  Quote(this.btnFunction, this.quoteList);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: Text('Quotes App'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(children: [
          ...(quoteList as List<Map<String, String>>)
              .map((quote) => Card(
                    margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              (quote['quote']).toString(),
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text('- ' + (quote['author']).toString(),
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.red),
                                textAlign: TextAlign.center)
                          ]),
                    ),
                  ))
              .toList(),
          SizedBox(height: 25.0),
          ElevatedButton(
            child: Text('Switch Quotes'),
            onPressed: btnFunction,
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shadowColor: Colors.red,
              elevation: 5.0,
            ),
          )
        ]),
      ),
    );
  }
}
