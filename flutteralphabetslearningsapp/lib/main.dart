// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AppBarBottomSample extends StatefulWidget {
  @override
  _AppBarBottomSampleState createState() => _AppBarBottomSampleState();
}

class _AppBarBottomSampleState extends State<AppBarBottomSample>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: choices.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 26,                  
        child: Scaffold(
          appBar: AppBar(
            title: const Text('AppBar Bottom Widget'),
            bottom: TabBar(
                tabs: [
                  Tab( text: "A"),
                  Tab( text: "B"),
                  Tab( text: "C"),
                  Tab( text: "D"),
                  Tab( text: "E"),
                  Tab( text: "F"),
                  Tab( text: "G"),
                  Tab( text: "H"),
                  Tab( text: "I"),
                  Tab( text: "J"),
                  Tab( text: "K"),
                  Tab( text: "L"),
                  Tab( text: "M"),
                  Tab( text: "N"),
                  Tab( text: "O"),
                  Tab( text: "Q"),
                  Tab( text: "R"),
                  Tab( text: "S"),
                  Tab( text: "T"),
                  Tab( text: "U"),
                  Tab( text: "V"),
                  Tab( text: "W"),
                  Tab( text: "X"),
                  Tab( text: "Y"),
                  Tab( text: "Z"),
                ],
                controller: _tabController,
                isScrollable: true,
              ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title});
  final String title;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'A',),
  const Choice(title: 'B'),
  const Choice(title: 'C'),
  const Choice(title: 'D'),
  const Choice(title: 'E'),
  const Choice(title: 'F'),
  const Choice(title: 'G'),
  const Choice(title: 'H'),
  const Choice(title: 'I'),
  const Choice(title: 'J'),
  const Choice(title: 'K'),
  const Choice(title: 'L'),
  const Choice(title: 'M'),
  const Choice(title: 'N'),
  const Choice(title: 'O'),
  const Choice(title: 'P'),
  const Choice(title: 'Q'),
  const Choice(title: 'R'),
  const Choice(title: 'S'),
  const Choice(title: 'T'),
  const Choice(title: 'U'),
  const Choice(title: 'V'),
  const Choice(title: 'W'),
  const Choice(title: 'X'),
  const Choice(title: 'Y'),
  const Choice(title: 'Z'),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display4;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(AppBarBottomSample());
}