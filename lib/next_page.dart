import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
//        title: Text(widget.title),
          title: Text("次の画面"),
        ),
        body: Container(
          height: double.infinity,
          color: Colors.red,
          child: Center(
            child: RaisedButton(
              child: Text('戻る'),
              onPressed: () {
                // return page
                Navigator.pop(
                  context,
//                  MaterialPageRoute(
//                    builder: (context) => NextPage(),
//                  ),
                );
              },
            ),
          ),
        ));
  }
}
