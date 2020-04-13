import 'package:flutter/material.dart';



class NewsList extends StatefulWidget {
  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  var now = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset('assets/images/controller.png'),
        title: Text('best videogames to play in cuarentine'),
        subtitle: Text('Play and have in fun.'),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          color: Theme.of(context).errorColor,
          onPressed: () {
            print('Are you sure you want to delete this news?') ;
          }
        )
        
      ),
    );
    
  }
}
