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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildTabBarView(),
        floatingActionButton: _buildFloatingActionButton(),
      ),
    );
  }
} // class Home

void _doNothing() {}

AppBar _buildAppBar() {
  return AppBar(
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
  );
}

TabBarView _buildTabBarView() {
  final chats = List<String>.generate(10, (i) => 'Chat message #${i + 1}');

  return TabBarView(children: [
    Container(color: Colors.pink, child: Center(child: Text('Calls Tab'))),
    _ChatsTabView(chats),
    Container(color: Colors.amber, child: Center(child: Text('Contact Tab'))),
  ]);
}

class _ChatsTabView extends StatelessWidget {
  final List items;

  _ChatsTabView(this.items);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.chat),
        title: Text(items[index]),
        subtitle: Text('Subtitle ${index + 1}'),
        trailing: Icon(Icons.more_horiz),
        onLongPress: () => Scaffold.of(context).showSnackBar(SnackBar(
          duration: Duration(seconds: 5),
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
          content: Text('Item ${items[index]} has been long pressed'),
        )),
      ),
    );
  }
}

FloatingActionButton _buildFloatingActionButton() {
  return FloatingActionButton(
    onPressed: _doNothing,
    child: Icon(Icons.add),
  );
}
