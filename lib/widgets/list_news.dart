import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './news_content.dart';

class NewsList extends StatefulWidget {
  final String title;
  final String subtitle;
  NewsList(this.title, this.subtitle); 
  


  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  var now = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return NewsContent();
                  },
                ),
              );
            },
            leading: Image.asset('assets/images/controller.png'),
            title: Text('best videogames to play in cuarentine'),
            subtitle: Text('Play and have in fun.'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              color: Theme.of(context).errorColor,
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
