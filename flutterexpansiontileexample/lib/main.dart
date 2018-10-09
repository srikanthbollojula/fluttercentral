import 'package:flutter/material.dart';

class ExpansionTileSample extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ExpansionTile'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
          itemCount: data.length,
        )
      ),
    );
  }
}

class Entry {
  
  final String title;
  final List<Entry> children;

  Entry(this.title, [this.children = const <Entry>[]]);
}

final List<Entry> data = <Entry>[
  Entry(
    'Chapter A',
    <Entry>[
      Entry(
        'Section A0',
        <Entry>[
          Entry('Item A0.1'),
          Entry('Item A0.2'),
          Entry('Item A0.3'),
        ]
      ),
      Entry('Section A1'),
      Entry('Section A2'),
    ],
  ),
  Entry(
    'Chapter B',
    <Entry>[
      Entry('Section B0'),
      Entry('Section B1'),
    ],
  ),
   Entry(
    'Chapter C',
    <Entry>[
      Entry(
        'Section C0',
        <Entry>[
          Entry('Item C0.1'),
          Entry('Item C0.2'),
          Entry('Item C0.3'),
        ]
      ),
      Entry('Section C1'),
      Entry('Section C2'),
    ],
  ),
];

class EntryItem extends StatelessWidget {

  const EntryItem(this.entry);

     final Entry entry;
    
      Widget _buildTiles(Entry root) {
        if(root.children.isEmpty) return ListTile(title: Text(root.title));
        return ExpansionTile(
          key: PageStorageKey<Entry>(root),
          title: Text(root.title),
          children: root.children.map(_buildTiles).toList(),
        );
      }

 @override
  Widget build(BuildContext context) {
        return _buildTiles(entry);
      }
}

void main(){
  runApp(ExpansionTileSample());
}