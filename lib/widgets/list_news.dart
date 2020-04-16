import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './news_content.dart';

class NewsList extends StatefulWidget {
  final String imagelink;
  final String title;
  final String subtitle;
  NewsList(this.imagelink, this.title, this.subtitle);

  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  var now = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return NewsContent('author', 'content', 'image');
              },
            ),
          );
        },
        leading: Image.asset(widget.imagelink),
        title: Text(widget.title),
        subtitle: Text(widget.subtitle),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          color: Theme.of(context).errorColor,
          onPressed: () {
            return showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('¿ Are you sure you want to delete this news ?'),
                  content: Text('¿ Do you accept ?'),
                  actions: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Text('Yes'),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('No'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
