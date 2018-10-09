import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: 
        // Below is the code which will help you to achive Buttons Bar as show above
        new Row(
          children: <Widget>[
            new RaisedButton(
              child: Text('Online'),
              onPressed: null,  
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.horizontal( left: Radius.circular(30.0), right: Radius.circular(0.0)))        
            ),
            new RaisedButton(
              child: Text('Offline'),
              onPressed: null,
               shape: RoundedRectangleBorder( borderRadius: BorderRadius.horizontal( left: Radius.circular(0.0), right: Radius.circular(30.0)))    
            ),
          ],
          mainAxisSize: MainAxisSize.min,
        ),        
      ),
    );
  }
}
