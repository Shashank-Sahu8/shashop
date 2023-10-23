import 'package:flutter/material.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/search.dart';
import 'package:finallyshop/cart.dart';
class deals extends StatefulWidget {
  const deals({super.key});

  @override
  State<deals> createState() => _dealsState();
}

class _dealsState extends State<deals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 2.0,
        shadowColor: Colors.white38,
        title: Text("Deals",style: TextStyle(color: Colors.black87,fontSize: 24),),
        actions: [
          IconButton(highlightColor: Color(0xfffa8128),onPressed: (){showSearch(context: context, delegate: Search());}, icon: Icon(Icons.search,color: Colors.blueGrey,size: 30,)),
          IconButton(highlightColor: Color(0xfffa8128),onPressed: ()=>{}, icon: Badge(child: Icon(Icons.shopping_cart,size: 30,color: Colors.blueGrey,),label: Text("$counter"))),


        ],
        backgroundColor: Colors.white,
      ),
      body: Text("p3"),
    );
  }
}
