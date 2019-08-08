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

class ThemeColors {
  static Color colorStart = Color.fromARGB(255, 0, 0, 0);
  static Color colorEnd = Color.fromARGB(255, 247, 218, 248);
  static Color colorMid = Color.fromARGB(255, 247, 218, 148);
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int count = 0;

  // 动画
//  Animation<Color> animation;
//  AnimationController controller;
//  initState() {
//    super.initState();
//    controller =
//        AnimationController(duration: const Duration(seconds: 2), vsync: this);
//    //颜色的过度
//    animation =
//    ColorTween(begin: ThemeColors.colorStart, end: ThemeColors.colorEnd)
//        .animate(controller)
//      ..addListener(() {
//        setState(() => {});
//      });
//  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: ThemeColors.colorEnd,
        child: new Column(
          children: <Widget>[
            new Expanded(
              child: new Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment(1,-0.2),
                      child:Text(
                        "鹤\n顶\n红",
                        style: new TextStyle(
                            fontFamily: 'lixuke',
                            fontSize: 36.0,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0,-1),
                      child:new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.filter_vintage),
                        Text(
                          "鹤\n顶\n红",
                          style: new TextStyle(
                              fontFamily: 'lixuke', fontSize: 36.0),
                        )
                      ],
                    ),),
                    ],
                  ),
                ],
              )),
              flex: 1,
            ),
            new Expanded(
              child: new Center(
                child: Text(""),
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
// 动画
//  @override
//  dispose() {
//    //路由销毁时需要释放动画资源
//    controller.dispose();
//    super.dispose();
//  }

// 设置变换颜色
//  child: FlatButton(
//  child: Text("change color"),
//  textColor: Colors.white,
//  onPressed: () {
//  setState(() {
//  if(count%2==0){
//  ThemeColors.colorStart = ThemeColors.colorEnd;
//  }else{
//  ThemeColors.colorStart = ThemeColors.colorMid;
//  }
//  count++;
//  });
//  },
//  ),

//  child: new Column(
//  children: <Widget>[
//  new Expanded(
//  child: new Container(
//  color: Colors.redAccent,
//  //child: new Column(  // rgb与颜色的名称
//  child:
//  new Row(children: <Widget>[
//  new Text('''玫\n瑰\n黄''',style: new TextStyle(fontFamily: 'Schyler',fontSize: 36.0,),),
//  new Text('''玫\n瑰\n黄''',style: new TextStyle(fontFamily: 'Schyler',fontSize: 36.0),),
//  ]),
//  //),
//  ),
//  flex: 1,
//  ),
//  new Expanded(
//  child: new Container(
//  color: Colors.greenAccent,
//  ),
//  flex: 1,
//  ),
//  ],
//  )

}
