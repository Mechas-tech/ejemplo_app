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
        appBar: AppBar(title: Text('news')),
        body: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          color: Colors.yellow,
          child: ListView(
            children: <Widget>[
              Card(
                color: Colors.red,
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.title),
                  ),
                  title: Text('holis'),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.title),
                ),
                title: Text('holis'),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.title),
                  ),
                  Text('holis')
                ],
              ),
              NewsList('best videogames to play in cuarentine'),
              NewsList('askdja'),
            ],
          ),
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
