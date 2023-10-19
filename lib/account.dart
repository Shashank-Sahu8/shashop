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
          IconButton(onPressed: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>search()))}, icon: Icon(Icons.search,color: Colors.blueGrey,size: 30,)),
          IconButton(onPressed: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()))}, icon: Icon(Icons.shopping_cart,color: Colors.blueGrey,size: 30,)),

        ],
        backgroundColor: Colors.white,
      ),
      body: Text("p5"),
    );
  }
}
