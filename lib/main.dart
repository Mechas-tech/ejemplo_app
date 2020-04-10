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
        appBar: AppBar(title: Text('news')),
        body: Card(
          child: ListTile(
            leading: FlutterLogo(size: 72.0),
            title: Text('best videogames to play in cuarentine'),
            subtitle: Text('Play and have in fun.'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (null),
        ),
      ),
    );
  }
}
