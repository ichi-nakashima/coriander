import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  final String name;

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(name),
              Center(
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('戻る'),
                      onPressed: () {
                        // return page
                        Navigator.pop(context, 'Fukuro かっこいい'
//                  MaterialPageRoute(
//                    builder: (context) => NextPage(),
//                  ),
                            );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
