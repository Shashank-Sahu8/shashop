import 'package:finallyshop/pages/login_page.dart';
import 'package:finallyshop/pages/search.dart';
import 'package:finallyshop/pages/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:finallyshop/main.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  final auth=FirebaseAuth.instance;

  void idd(indexx){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 2.0,
        shadowColor: Colors.white38,
        title: Text("My Cart",style: TextStyle(color: Colors.black87,fontSize: 24),),
        actions: [
          IconButton(onPressed: (){
            auth.signOut().then((value){Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));}).onError((error, stackTrace){utils().toastmess(error.toString());});
          }, icon: Icon(Icons.logout,color: Colors.blueGrey,)),
           IconButton(highlightColor: Color(0xfffa8128),onPressed: (){showSearch(context: context, delegate: Search());}, icon: Icon(Icons.search,color: Colors.blueGrey,size: 30,)),
          
  ],
        backgroundColor: Colors.white,
      ),
      body: Text("p4"),

    );
  }
}
