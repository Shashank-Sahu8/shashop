import 'package:flutter/material.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/search.dart';
import 'package:finallyshop/cart.dart';
class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    appBar: AppBar(
      toolbarHeight: 60,
      elevation: 2.0,
      shadowColor: Colors.white38,
      title: Text("List",style: TextStyle(color: Colors.black87,fontSize: 24),),
      actions: [

      ],
      backgroundColor: Colors.white,
    );
    return Scaffold();
  }
}
