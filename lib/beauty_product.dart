
import 'package:finallyshop/cart.dart';
import 'package:finallyshop/home.dart';
import 'package:flutter/material.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/account.dart';
import 'package:finallyshop/categories.dart';
import 'package:finallyshop/deals.dart';
import 'package:finallyshop/list.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:finallyshop/search.dart';
import 'package:flutter/animation.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:finallyshop/sale1.dart';
import 'package:flutter/animation.dart';
import 'package:finallyshop/productt.dart';
class beauty_product extends StatefulWidget {
  const beauty_product({super.key});

  @override
  State<beauty_product> createState() => _beauty_productState();
}

class _beauty_productState extends State<beauty_product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: BackButton(color: Colors.blueGrey,),
        toolbarHeight: 60,
        elevation: 2.0,
        shadowColor: Colors.white38,
        title: Align(
            alignment: Alignment.bottomLeft,
            child: Text("Beauty Products",style: TextStyle(color: Colors.black87,fontSize: 24),)),
        actions: [
          IconButton(highlightColor: Color(0xfffa8128),onPressed: (){showSearch(context: context, delegate: Search());}, icon: Icon(Icons.search,color: Colors.blueGrey,size: 30,)),
          IconButton(highlightColor: Color(0xfffa8128),onPressed: ()=>{}, icon: Badge(child: Icon(Icons.shopping_cart,size: 30,color: Colors.blueGrey,),label: Text("$counter"))),
        ],
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: new Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top:15.0,left: 10),
              child: Align(alignment: Alignment.centerLeft,child: Text("Mostly Searched",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),)),
            ),
            Container(margin:EdgeInsets.only(top: 5),height:1100,child: allproductscl())

          ],
        ),
      ),
    );
  }
}
