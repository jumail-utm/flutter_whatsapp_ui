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
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: _doNothing,
          ),
          title: Text('Whatsapp'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: _doNothing),
            IconButton(icon: Icon(Icons.message), onPressed: _doNothing),
            IconButton(icon: Icon(Icons.more_vert), onPressed: _doNothing),
          ],
          bottom: TabBar(tabs: [
            Tab(text: 'CALLS', icon: Icon(Icons.call)),
            Tab(text: 'CHATS', icon: Icon(Icons.chat)),
            Tab(text: 'CONTACTS', icon: Icon(Icons.contacts)),
          ]),
        ),
        body: TabBarView(children: [
          Container(
              color: Colors.pink, child: Center(child: Text('Calls Tab'))),
          Container(
              color: Colors.white, child: Center(child: Text('Chats Tab'))),
          Container(
              color: Colors.amber, child: Center(child: Text('Contact Tab'))),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: _doNothing,
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          backgroundColor: Colors.pink,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('Friends'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.nature_people),
              title: Text('Pending'),
            ),
          ],
        ),
      ),
    );
  }
}

