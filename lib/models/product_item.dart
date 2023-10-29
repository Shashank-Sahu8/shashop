import 'dart:math';
import 'package:finallyshop/categoriesnav/cloth_section.dart';
import 'package:finallyshop/bottomnav/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../categoriesdis/allproduct.dart';
import 'package:finallyshop/categoriesnav/beauty_product.dart';
import 'package:finallyshop/categoriesdis/allproduct.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/categoriesdis/allproduct.dart';
class product_item extends StatefulWidget {
  product_item({super.key, required this.name, required this.image, required this.description, required this.cost, required this.oldcost});
  final String name;
  final String image;
  final String description;
  final String cost;
  final String oldcost;

  @override
  State<product_item> createState() => _product_itemState();
}

class _product_itemState extends State<product_item> {
  @override
  Widget build(BuildContext context) {
       return InkWell(
         onTap:()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>cloth_Section()))},
         child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0.7,color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),image: DecorationImage(image: NetworkImage(widget.image),fit: BoxFit.cover)),
                        height:150,width: 500
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(margin: EdgeInsets.only(left: 6),
                            height: 20,
                            width: 40,
                            decoration: BoxDecoration(color: Colors.deepOrangeAccent,borderRadius:BorderRadius.all(Radius.circular(5)) ),
                            child: Center(child: Text("-50%",style: TextStyle(color: Colors.white,fontSize: 10),))
                        ),
                        IconButton(onPressed: ()=>{
                          setState((){
                          showDialog(
                          context: context,
                          builder: (context) {
                          Future.delayed(Duration(milliseconds: 400), () {
                          Navigator.of(context).pop(true);
                          });
                          return AlertDialog(
                          title: Row(children: [Icon(FontAwesome.circle_check,color: Colors.green,),SizedBox(width: 10,),Text('Added to cart')],),
                          );
                          });
                          counter++;
                          })
                        },
                            icon: Icon(FontAwesome.heart,color: Colors.blueGrey,))
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Text(widget.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),textAlign: TextAlign.center),
                SizedBox(height: 5,),
                Text(widget.description,style: TextStyle(fontSize: 12,color: Colors.deepOrangeAccent),),
                SizedBox(height: 5,),
                Center(
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Bootstrap.currency_rupee,color: Colors.green,size: 19,),
                      Text(widget.cost,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(width: 20,),
                      Text("M.R.P:",style: TextStyle(color: Colors.blueGrey),),
                      Text("\u{20B9}${widget.oldcost}",style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.blueGrey),)
                      // Row(
                      //   children: [
                      //     Icon(Icons.currency_rupee,color: Colors.grey,size: 15,),
                      //     Text(widget.cost,style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.blueGrey),),
                      //   ],
                      // ),
                      
                    ],
                  ),
                  
                ),
                SizedBox(height: 7,),
                Text('Free Delivery over \u{20B9}${499}.\nFulfilled by Shashop',textAlign: TextAlign.center,style: TextStyle(fontSize: 12),)


              ],
            ),
      ),
       );
  }
}
