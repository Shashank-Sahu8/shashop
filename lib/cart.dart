import 'package:finallyshop/search.dart';
import 'package:flutter/material.dart';
import 'package:finallyshop/main.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 2.0,
        shadowColor: Colors.white38,
        title: Text("My Cart",style: TextStyle(color: Colors.black87,fontSize: 24),),
        actions: [
           IconButton(onPressed: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>search()))}, icon: Icon(Icons.search,color: Colors.blueGrey,size: 30,)),
           IconButton(onPressed: ()=>{}, icon: Icon(Icons.shopping_cart,color: Colors.blueGrey,size: 30,)),
          
  ],
        backgroundColor: Colors.white,
      ),
      body: Text("p4"),

    );
  }
}
