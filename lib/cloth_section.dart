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
            for(int i=0;i<product_image.length;i++,i++)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 0.4,color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow:[BoxShadow(color:Colors.grey,spreadRadius: 0.5,blurRadius: 5)],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              children: [


                                Stack(
                                  children: [
                                    Container(
                                        height: 130,
                                        child: Center(child: Image.asset(product_image[i]))
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            height: 20,
                                            width: 40,
                                            decoration: BoxDecoration(color: Colors.deepOrangeAccent,borderRadius:BorderRadius.all(Radius.circular(5)) ),
                                            child: Center(child: Text("-50%",style: TextStyle(color: Colors.white,fontSize: 10),))
                                        ),
                                        SizedBox(width: 50,),
                                        IconButton(onPressed: ()=>{}, icon: Icon(FontAwesome.heart))
                                      ],
                                    ),
                                  ],
                                ),
                                Text(product_name[i],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                                Text(product_discreption[i],style: TextStyle(fontSize: 12,color: Colors.deepOrangeAccent),),
                                Text(product_cost[i],style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)


                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 0.4,color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow:[BoxShadow(color:Colors.grey,spreadRadius: 0.5,blurRadius: 5)],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              children: [


                                Stack(
                                  children: [
                                    Container(
                                        height: 130,
                                        child: Center(child: Image.asset(product_image[i+1]))
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                            height: 20,
                                            width: 40,
                                            decoration: BoxDecoration(color: Colors.deepOrangeAccent,borderRadius:BorderRadius.all(Radius.circular(5)) ),
                                            child: Center(child: Text("-50%",style: TextStyle(color: Colors.white,fontSize: 10),))
                                        ),
                                        SizedBox(width: 50,),
                                        IconButton(onPressed: ()=>{}, icon: Icon(FontAwesome.heart))
                                      ],
                                    ),
                                  ],
                                ),
                                Text(product_name[i+1],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                                Text(product_discreption[i+1],style: TextStyle(fontSize: 12,color: Colors.deepOrangeAccent),),
                                Text(product_cost[i+1],style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)


                              ],
                            ),
                          ),
                        ),
                      ),



                    ],
                  )
                ],
              ),


          ],
        ),
      ),

    );
  }
}
