import 'package:flutter/material.dart';
import 'drawer/bisco_drawer.dart';
import 'pages/friend.dart';

void main() => runApp(BiscordMain());

class BiscordMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biscord',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.grey[850],
        canvasColor: Colors.grey[850],
        textTheme: TextTheme(
          subhead: TextStyle(color: Colors.white),
          body1: TextStyle(color: Colors.white),  

        )
      ),
      home: MainPage(title: 'Biscord'),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("フレンド"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
            child: Icon(Icons.person_add),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
            child: Icon(Icons.people),
          )
        ],
      ),
      drawer: Drawer(
        child: BiscoDrawer(),
      ),

      body: FriendPage(),
    );
  }
}
