import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './models/articles.dart';

class NewsContent extends StatelessWidget {
  final date = new DateTime.now();
  final List<Artciles> articles = [
    Artciles(
      author: 'By Frank Rubiano',
      date: DateTime.now(),
      content: 'Lets try',
      image: 'control1',
    ),
    Artciles(
      author: 'By David Rubiano',
      date: DateTime.now(),
      content: 'Lets test',
      image: 'control2',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Best games to play in quarentine'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: articles.map(
              (art) {
                return Card(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.redAccent,
                            width: 2,
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          art.author.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.redAccent
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            DateFormat.yMMMd().format(art.date),
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(art.content, style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),),
                          Text(art.image),
                        ],
                      )
                    ],
                  ),
                );
              },
            ).toList(),
          ),

          // Card(
          //   child: Text(
          //     DateFormat().format(date),
          //   ),
          // ),
          // Card(
          //   child: Text(content),
          // ),
          // Container(
          //   height: 200,
          //   child: Center(
          //     child: Image.asset(
          //       image,
          //       fit: BoxFit.cover,
          //       alignment: Alignment.center,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
