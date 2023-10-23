import 'package:flutter/material.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/search.dart';
import 'package:finallyshop/cart.dart';


class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 2.0,
        shadowColor: Colors.white38,
        title: Text("Account",style: TextStyle(color: Colors.black87,fontSize: 24),),
        actions: [
          IconButton(highlightColor: Color(0xfffa8128),onPressed: (){showSearch(context: context, delegate: Search());}, icon: Icon(Icons.search,color: Colors.blueGrey,size: 30,)),
          IconButton(highlightColor: Color(0xfffa8128),onPressed: ()=>{}, icon: Badge(child: Icon(Icons.shopping_cart,size: 30,color: Colors.blueGrey,),label: Text("$counter"))),


        ],
        backgroundColor: Colors.white,
      ),
      body: Text("p4"),
    );
  }
}



