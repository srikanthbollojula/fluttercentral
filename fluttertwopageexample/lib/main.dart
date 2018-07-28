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

  void _opennewpage() {
    Navigator.of(context).push(
      new MaterialPageRoute<void>(
        builder: (BuildContext context) {      
          return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'This is your second page',
              ),
            ],
          ),
        ),
      );
        },
      ),
    );
  }

    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'Example to Navigate to Next Page',
              ),
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: _opennewpage,
          tooltip: 'Open New Page',
          child: new Icon(Icons.navigate_next),
        ),
      );
    }
  }
