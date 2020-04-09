import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'News',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('News'),
            ),
            body: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(
                    child: Text('OMG covid!!'),
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: const Center(
                    child: Text('How to work at home'),
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: const Center(
                    child: Text('Animal Lovers!'),
                  ),
                ),
              ],
            )));
  }
}
