import 'package:flutter/material.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/home.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(

        height: 300,
        width: 320,
        margin: EdgeInsets.only(top: 0,left: 30),
        child: Center(

          child: TextField(
            style: TextStyle(color: Colors.blueGrey),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Search product,brands,deals,etc.",
              prefix: IconButton(color: Colors.grey,
                onPressed: ()=>{},icon: Icon(Icons.search,color: Colors.grey,size: 30,),
              ),
            ),

          ),
        ),
      ),
    );
  }
}
