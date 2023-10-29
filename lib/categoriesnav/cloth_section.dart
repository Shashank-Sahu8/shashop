import 'package:finallyshop/bottomnav/cart.dart';
import 'package:finallyshop/bottomnav/home.dart';
import 'package:finallyshop/categoriesdis/choths.dart';
import 'package:flutter/material.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/bottomnav/account.dart';
import 'package:finallyshop/bottomnav/categories.dart';
import 'package:finallyshop/bottomnav/deals.dart';
import 'package:finallyshop/list.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:finallyshop/pages/search.dart';
import 'package:flutter/animation.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:finallyshop/sale1.dart';
import 'package:flutter/animation.dart';
import 'package:provider/provider.dart';
import 'package:finallyshop/models/model.dart';
import 'package:finallyshop/categoriesdis/allproduct.dart';
class cloth_Section extends StatefulWidget {
  const cloth_Section({super.key});

  @override
  State<cloth_Section> createState() => _cloth_SectionState();
}

class _cloth_SectionState extends State<cloth_Section> {
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
            child: Text("Cloths Section",style: TextStyle(color: Colors.black87,fontSize: 24),)),
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
              padding: const EdgeInsets.all(8.0),
              child: Align(alignment: Alignment.centerLeft,child: Text("Mostly Searched",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
            ),
            Padding(padding: EdgeInsets.only(top: 5),child: clothss(),)


          ],
        ),
      ),

    );
  }
}
