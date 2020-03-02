import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Whatsapp Clone',
        theme: ThemeData(primarySwatch: Colors.teal),
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  void _doNothing() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: _doNothing),
        title: Text('Whatsapp'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: _doNothing),
          IconButton(icon: Icon(Icons.message), onPressed: _doNothing),
          IconButton(icon: Icon(Icons.more_vert), onPressed: _doNothing),
        ],
      ),
    );
  }
}
