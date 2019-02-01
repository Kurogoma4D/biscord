import 'package:flutter/material.dart';
import 'package:biscord/custom_widgets/padding_icon.dart';
import 'friend_list.dart';

class BiscoDrawer extends StatefulWidget {
  _BiscoDrawerState createState() => _BiscoDrawerState();
}

class _BiscoDrawerState extends State<BiscoDrawer> {
  Widget _serverList(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.red[index * 100],
      ),
    );
  }

  Widget _ownStats() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: CircleAvatar(
              child: Icon(
                Icons.person,
                size: 36,
              ),
          ),
        ),
        Expanded(
          child: Text(
            "Me",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        PaddingIcon(Icons.search),
        PaddingIcon(Icons.security),
        PaddingIcon(Icons.sentiment_dissatisfied)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 72,
              color: Colors.grey[900],
              child: ListView.builder(
                itemCount: 16,
                itemBuilder: _serverList,
              ),
            ),
            Expanded(
              child: FriendList(),
            ),
          ],
        ),
        Container(
            height: 60,
            color: Colors.grey[850],
            padding: EdgeInsets.all(8),
            child: _ownStats())
      ],
    );
  }
}
