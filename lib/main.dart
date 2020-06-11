import 'package:coriander/next_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
//      initialRoute: '/',
//      routes: {
//        // When navigating to the "/" route, build the FirstScreen widget.
//        '/': (context) => MyHomePage(),
//        // When navigating to the "/second" route, build the SecondScreen widget.
//        '/next': (context) => NextPage(),
//      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = List<String>.generate(10000, (i) => "ichinaka $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        title: Text(widget.title),
        title: Text("ぞい！ぞい！Flutter"),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.vertical,
          children: <Widget>[
//            Column(
//              children: <Widget>[
//                Expanded(
//                  child: Image.network(
//                      'https://connpass-tokyo.s3.amazonaws.com/user/313720/3df4a3856ec741459c93d66e8f3dd03a.jpeg'),
//                ),
//                Text('ichinaka'),
//              ],
//            ),
            Container(
              width: 160.0,
              height: 88,
              color: Colors.red,
            ),
            Container(
              width: 160.0,
              height: 88,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              height: 88,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              height: 88,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              height: 88,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
