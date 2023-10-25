import 'package:flutter/material.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/search.dart';
import 'package:finallyshop/cart.dart';
import 'package:finallyshop/gadgets.dart';
import 'package:finallyshop/cloth_section.dart';
import 'package:finallyshop/footwear.dart';
import 'package:finallyshop/phone.dart';
import 'package:finallyshop/watch.dart';
import 'package:finallyshop/beauty_product.dart';

class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 2.0,
        shadowColor: Colors.white38,
        title: Text("Categories",style: TextStyle(color: Colors.black87,fontSize: 24),),
        actions: [
          IconButton(highlightColor: Color(0xfffa8128),onPressed: (){showSearch(context: context, delegate: Search());}, icon: Icon(Icons.search,color: Colors.blueGrey,size: 30,)),
          IconButton(highlightColor: Color(0xfffa8128),onPressed: ()=>{}, icon: Badge(child: Icon(Icons.shopping_cart,size: 30,color: Colors.blueGrey,),label: Text("$counter"))),


        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: new Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>cloth_Section()))},
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.black,radius: 35,backgroundImage:AssetImage('assets/shop_cloths.jfif')),
                      SizedBox(width: 15,),
                      Text("Cloths",style: TextStyle(fontSize: 21,)),
                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 10,
              ),
              Divider(color: Colors.blueGrey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>footwear()))},
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.black,radius: 35,backgroundImage: AssetImage('assets/shop_footwears.jfif'),),
                      SizedBox(width: 15,),
                      Text("Footwears",style: TextStyle(fontSize: 21,)),
                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 10,
              ),
              Divider(color: Colors.blueGrey),

              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>phone()))},
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.black,radius: 35,backgroundImage: AssetImage('assets/shop_phones.jfif'),),
                      SizedBox(width: 15,),
                      Text("Mobile Phones",style: TextStyle(fontSize: 21,)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Divider(color: Colors.blueGrey),

              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>watch()))},
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.black,radius: 35,backgroundImage: AssetImage('assets/shop_watches.webp'),),
                      SizedBox(width: 15,),
                      Text("Watches",style: TextStyle(fontSize: 21,)),
                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 10,
              ),
              Divider(color: Colors.blueGrey),

              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>beauty_product()))},
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.black,radius: 35,backgroundImage: AssetImage('assets/shop_beauty.jfif'),),
                      SizedBox(width: 15,),
                      Text("Beauty Products",style: TextStyle(fontSize: 21,)),
                    ],
                  ),
                ),
              ),
              Divider(color: Colors.blueGrey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>gadgets()))},
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.black,radius: 35,backgroundImage: AssetImage('assets/gadgets.jfif'),),
                      SizedBox(width: 15,),
                      Text("Gadgets",style: TextStyle(fontSize: 21,)),
                    ],
                  ),
                ),
              ),
              Divider(color: Colors.blueGrey),
            ],
          ),
        ),
      ),
    );
  }
}
