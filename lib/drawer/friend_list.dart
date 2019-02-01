import 'package:flutter/material.dart';
import 'friend_items.dart';

class FriendList extends StatefulWidget {
  _FriendListState createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  Widget _listbuild() {
    final stats = new Status();
    final items = List<ListItem>.generate(12,
        (i) => i == 0 ? Head() : FriendItem(i.toString(), stats.generate()));

    return ListView.separated(
      separatorBuilder: (context, index) => Divider(color: Colors.grey[900],),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        if (item is Head) {
          return Container(
            margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.person, color: Colors.white70,),
                  title: Text("フレンド", style: TextStyle(color: Colors.white70),),
                ),
                Text(
                  "ダイレクトメッセージ",
                  style: TextStyle(fontSize: 12, color: Colors.white30),
                )
              ],
            ),
          );
        } else if (item is FriendItem) {
          return Container(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(item.name[0]),
              ),
              title: Text(item.name, style: TextStyle(color: Colors.white70),),
              subtitle: Text(item.status, style: TextStyle(color: Colors.grey[700]),),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[900],
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                    hintText: "会話に参加または作成する",
                    hintStyle: TextStyle(fontSize: 12, color: Colors.white30)
                ),
              ),
            ),
            Expanded(child: _listbuild())
          ],
        ),
      ),
    );
  }
}
