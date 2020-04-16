import 'package:flutter/material.dart';
import './widgets/add_news.dart';
import './widgets/list_news.dart';

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
          title: Text('news'),
        ),
        body: ListView(
          children: <Widget>[
            NewsList('assets/images/controller.png',
                'Best games to play in quarentine', 'Play and hae in fun'),
            NewsList('assets/images/controller.png',
                'Best games to play in quarentine', 'Play and hae in fun'),
            NewsList('assets/images/controller.png',
                'Best games to play in quarentine', 'Play and hae in fun'),
            NewsList('assets/images/controller.png',
                'Best games to play in quarentine', 'Play and hae in fun'),
            NewsList('assets/images/controller.png',
                'Best games to play in quarentine', 'Play and hae in fun'),
            NewsList('assets/images/controller.png',
                'Best games to play in quarentine', 'Play and hae in fun'),
            NewsList('assets/images/controller.png',
                'Best games to play in quarentine', 'Play and hae in fun'),
            NewsList('assets/images/controller.png',
                'Best games to play in quarentine', 'Play and hae in fun'),
            NewsList('assets/images/controller.png',
                'Best games to play in quarentine', 'Play and hae in fun'),
            NewsList('assets/images/controller.png',
                'Best games to play in quarentine', 'Play and hae in fun'),
          ],
        ),
        floatingActionButton: AddNewsButton(),
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
