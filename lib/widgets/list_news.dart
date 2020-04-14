import 'package:ejemplo_app/widgets/news_content.dart';
import 'package:flutter/material.dart';

class NewsList extends StatefulWidget {
  final String title;

  NewsList(this.title);

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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return NewsContent();
            }));
          },
          leading: Image.asset('assets/images/controller.png'),
          title: Text(widget.title),
          subtitle: Text('Play and have in fun.'),
          trailing: IconButton(
              icon: Icon(Icons.delete),
              color: Theme.of(context).errorColor,
              onPressed: () {
                print('Are you sure you want to delete this news?');
              })),
    );
  }
}
