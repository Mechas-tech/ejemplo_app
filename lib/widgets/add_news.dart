import 'package:flutter/material.dart';


class AddNews extends StatefulWidget {
  @override
  _AddNewState createState() => _AddNewState();
}

class _AddNewState extends State<AddNews> {
  // String authorInput;
  // String redactInput;
  final authorController = TextEditingController();
  final redactController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Author Name'),
              controller: authorController,
              // onChanged: (val) {
              //   authorInput = val;
              // }
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Redact your News'),
              controller: redactController,
              // onChanged: (val) => redactInput = val,
            ),
            FlatButton(
              child: Text('Create News'),
              textColor: Colors.blue,
              onPressed: () {
                print(authorController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
