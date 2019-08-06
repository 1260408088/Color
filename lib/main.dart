import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Container(color: Colors.redAccent),
//        child: new Column(
//        children: <Widget>[
//          new Expanded(
//            child: new Container(
//              color: Colors.redAccent,
//              height: 40.0,
//            ),
//            flex: 1,
//          ),
//          new Expanded(
//            child: new Container(
//              color: Colors.greenAccent,
//              height: 40.0,
//            ),
//            flex: 1,
//          ),
//        ],
//      ),),
      ),
    );
  }
}


//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      child: new Column(
//        children: <Widget>[
//          new Flexible(
//            child: new Container(
//              color: Colors.redAccent,
//              height: 40.0,
//            ),
//            flex: 1,
//          ),
//          new Flexible(
//            child: new Container(
//              color: Colors.redAccent,
//              height: 40.0,
//            ),
//            flex: 1,
//          ),
//        ],
//      ),
//    );
//  }