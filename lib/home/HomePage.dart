import 'package:bite_club/home/tabs/chat/ChatPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    ChatPage(Colors.blue),
    ChatPage(Colors.deepOrange),
    ChatPage(Colors.green),
    ChatPage(Colors.amber),
    ChatPage(Colors.brown)
  ];

  final List<String> tabNames = [
    "Upcoming Events",
    "My Events",
    "Scan QR",
    "People",
    "More",
    "Events",
    "Chat"
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          tabNames[_currentIndex],
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            splashColor: Colors.red,
            unselectedWidgetColor: Colors.green,
            primaryColor: Colors.red,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.grey))),
        // sets the inactive color of the `BottomNavigationBar`
        child: BottomNavigationBar(
          elevation: 8.0,
          fixedColor: Colors.red,
          unselectedFontSize: 10,
          selectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: new Icon(Icons.event, color: Colors.black12),
                title: new Text(tabNames[5],
                    style: TextStyle(fontWeight: FontWeight.bold))),
            BottomNavigationBarItem(
                icon: new Icon(Icons.event_note, color: Colors.black12),
                title: new Text(tabNames[1],
                    style: TextStyle(fontWeight: FontWeight.bold))),
            BottomNavigationBarItem(
                icon: Icon(Icons.scanner, color: Colors.black12),
                title: Text(tabNames[2],
                    style: TextStyle(fontWeight: FontWeight.bold))),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat, color: Colors.black12),
                title: Text(tabNames[6],
                    style: TextStyle(fontWeight: FontWeight.bold))),
            BottomNavigationBarItem(
                icon: Icon(Icons.more, color: Colors.black12),
                title: Text(tabNames[4],
                    style: TextStyle(fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }
}
