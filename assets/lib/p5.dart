import 'package:flutter/material.dart';

class name {
  String names;
  String no_of_rep;
  name(String n, String no) {
    this.names = n;
    this.no_of_rep = no;
  }
}

class Lists extends StatefulWidget {
  @override
  _ListsState createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  List<name> l = [name("push", "15 Rep"), name("push", "15 Rep")];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
