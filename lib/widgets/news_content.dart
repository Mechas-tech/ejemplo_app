import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewsContent extends StatelessWidget {
  final date = new DateTime.now();
  final String author;
  final String content;
  final String image;
  NewsContent(this.author, this.content, this.image);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Best games to play in quarentine'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Text(
              author,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Card(
            child: Text(
              DateFormat().format(date),
            ),
          ),
          Card(
            child: Text(content),
          ),
          Container(
            height: 200,
            child: Center(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
