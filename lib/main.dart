import 'package:flutter/material.dart';
import './widgets/add_news.dart';

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
            leading: Image.asset('assets/images/controller.png'),
            title: Text('best videogames to play in cuarentine'),
            subtitle: Text('Play and have in fun.'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
      ),
    );
  }
}

class AddNewsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (_) {
            return AddNews();
          },
        );
      },
      label: Text('Add News'),
      icon: Icon(Icons.add),
      backgroundColor: Colors.blue,
    );
  }
}
