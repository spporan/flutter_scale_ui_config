import 'package:flutter/material.dart';
import 'package:flutter_scale_ui/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: SizeConfig.safeBlockHorizontal*60,
          height: SizeConfig.safeBlockVertical*30,
          color: Colors.black,
          child: TextScalePage(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
class TextScalePage extends StatefulWidget {
  @override
  _TextScalePageState createState() => _TextScalePageState();
}

class _TextScalePageState extends State<TextScalePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Center(
        child: Text(
          'Scaling text!',
          style: TextStyle(
            fontSize: SizeConfig.safeBlockHorizontal * 10,
          ),
        ),
      ),
    );
  }
}
