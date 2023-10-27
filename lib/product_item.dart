import 'dart:math';

import 'package:finallyshop/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'productt.dart';
import 'package:finallyshop/beauty_product.dart';
import 'package:finallyshop/productt.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/productt.dart';

class product_item extends StatelessWidget {
  product_item({super.key, required this.name, required this.image, required this.description, required this.cost});
  final String name;
  final String image;
  final String description;
  final String cost;
  @override
  Widget build(BuildContext context) {
       return InkWell(
         onTap:()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>home()))},
         child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 0.4,color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
            // boxShadow:[BoxShadow(color:Colors.grey,spreadRadius: 0.07,blurRadius: 3)],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        height: 130,
                        child: Center(child: Image.asset(image))
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 20,
                            width: 40,
                            decoration: BoxDecoration(color: Colors.deepOrangeAccent,borderRadius:BorderRadius.all(Radius.circular(5)) ),
                            child: Center(child: Text("-50%",style: TextStyle(color: Colors.white,fontSize: 10),))
                        ),
                        IconButton(onPressed: ()=>{

                        }, icon: Icon(FontAwesome.heart))
                      ],
                    ),
                  ],
                ),
                Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                Text(description,style: TextStyle(fontSize: 12,color: Colors.deepOrangeAccent),),
                Center(
                  child: Row(
                    children: [
                      Icon(Bootstrap.currency_rupee,color: Colors.green,size: 24,),
                      Text(cost,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                )


              ],
            ),
          ),
      ),
       );
  }
}
