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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String text = "次へ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        title: Text(widget.title),
        title: Text("ぞい！ぞい！Flutter"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
//            Image.asset('images/IMG_2186.jpeg'),
            Icon(
              Icons.directions_car,
              size: 60,
            ),
            RaisedButton(
              child: Text(text),
              onPressed: () async {
                // 画面遷移のコード
//              Navigator.pushNamed(context, '/next');
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextPage('ichinaka'),
                  ),
                );
                text = result;
                print(result);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
