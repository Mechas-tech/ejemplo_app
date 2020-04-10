import 'package:flutter/material.dart';

class NewsList extends StatefulWidget {
  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: FlutterLogo(size: 72.0),
        title: Text('best videogames to play in cuarentine'),
        subtitle: Text('Play and have in fun.'),
        trailing: Icon(Icons.more_vert),
        isThreeLine: true,
      ),
    );
  }
}
