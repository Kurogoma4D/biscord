import 'dart:math';

abstract class ListItem{}

class Head implements ListItem {
  Head();
}

class FriendItem implements ListItem {
  String name;
  String status;

  FriendItem(this.name, this.status);
}

class Status {
  final list = ["オンライン", "オフライン", "退席中", "起こさないで"];
  final _rand = new Random();

  Status();

  String generate(){
    return list[_rand.nextInt(list.length)];
  }
}