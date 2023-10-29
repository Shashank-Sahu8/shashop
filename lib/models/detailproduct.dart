import 'dart:math';
import 'package:dotted_border/dotted_border.dart';
import 'package:finallyshop/categoriesnav/cloth_section.dart';
import 'package:finallyshop/bottomnav/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../categoriesdis/allproduct.dart';
import 'package:finallyshop/categoriesnav/beauty_product.dart';
import 'package:finallyshop/categoriesdis/allproduct.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/pages/search.dart';
class detailproduct extends StatefulWidget {
  const detailproduct({super.key, required this.cost, required this.oldcost, required this.description, required this.image, required this.image2, required this.image3, required this.image4, required this.productModel, required this.name});
final String cost;
final String oldcost;
final String description;
final String image;
final String image2;
final String image3;
final String image4;
final String productModel;
final String name;


  @override
  State<detailproduct> createState() => _detailproductState();
}

class _detailproductState extends State<detailproduct> {
  List <String>l1=['S','M','L','XL','XXL'];
  List<String> l2=["Pink","Red","Green","Yellow","White","Black"];
  late String val="Color";
  late String valv="Size";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.blueGrey,),
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 2.0,
        shadowColor: Colors.white38,
        title:  Text(widget.name,textAlign: TextAlign.left,style: TextStyle(color: Colors.black87,fontSize: 21),),
        actions: [
          IconButton(highlightColor: Color(0xfffa8128),onPressed: (){showSearch(context: context, delegate: Search());}, icon: Icon(Icons.search,color: Colors.blueGrey,size: 30,)),
          IconButton(highlightColor: Color(0xfffa8128),onPressed: ()=>{}, icon: Badge(child: Icon(Icons.shopping_cart,size: 30,color: Colors.blueGrey,),label: Text("$counter"))),
        ],
      ),


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text(widget.name,style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),Text(widget.description,style: TextStyle(fontSize: 18),),SizedBox(height: 10,),Text(widget.productModel,style: TextStyle(fontSize: 16,color: Colors.orange),)],
                    ),
                    Icon(Icons.share)
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(widget.image),fit: BoxFit.cover)),
                ),
              ),
              Row(
                children: [
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                decoration: BoxDecoration(color: Colors.grey,image: DecorationImage(image: NetworkImage(widget.image2),fit: BoxFit.cover)),
              ),
                  ),),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 140,
                      decoration: BoxDecoration(color: Colors.grey,image: DecorationImage(image: NetworkImage(widget.image3),fit: BoxFit.cover)),
                    ),
                  ),),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 140,
                      decoration: BoxDecoration(color: Colors.grey,image: DecorationImage(image: NetworkImage(widget.image4),fit: BoxFit.cover)),
                    ),
                  ),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:5,left: 8),
                child: Text('BESTSELLER',style:TextStyle(color: Colors.blue,fontWeight: FontWeight.w500) ,),
              ),
              Divider(),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow,size: 18,),
                    Icon(Icons.star,color: Colors.yellow,size: 18,),
                    Icon(Icons.star,color: Colors.yellow,size: 18,),
                    Icon(Icons.star,color: Colors.yellow,size: 18,),
                    Icon(Icons.star_half,color: Colors.yellow,size: 18,),
                    SizedBox(width: 4,),
                    Text("4.5",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text('(487  REVIEWS)',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
              Divider(
                color: Colors.black12,
                height: 50,
                thickness: 8,
              ),
                Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("\u{20B9}",style: TextStyle(fontSize: 32),),
                        Text(widget.cost,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                        SizedBox(width: 15,),
                        Text("\u{20B9}${widget.oldcost}",style: TextStyle(fontSize: 18,color:Colors.blueGrey,decoration: TextDecoration.lineThrough),),
                        IconButton(onPressed: (){showDialog(
                            context: context,
                            builder: (context) {
                              Future.delayed(Duration(milliseconds: 5000), () {
                                Navigator.of(context).pop(true);
                              });
                              return Container(
                                child: AlertDialog(
                                  actions: [
                                    TextButton(onPressed: (){Navigator.pop(context);}, child: Text("OK",style: TextStyle(color: Colors.orange,fontSize: 21),))
                                  ],
                                  title: Text("Due to the special offer applied only for you,the price of the product have been decreased as per our Tearms & Conditions.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19),)
                                ),
                              );
                            });}, icon: Icon(Icons.info,color: Colors.blueGrey,size: 22,))
                      ],
                    ),
                    Text("In Stock",style: TextStyle(color: Colors.blueGrey),),
                    SizedBox(height: 10,),
                    DottedBorder(
                      strokeWidth: 0.6,
                        dashPattern: [2,0,2],
                        child: Container(
                      height: 35,
                          child: Center(child: Text("+ \u{20B9}130 Delivery Charges")),

                    ))
                  ],
                ),
              ),
              Divider(
                color: Colors.black12,
                height: 70,
                thickness: 8,
              ),

              Padding(
                padding: const EdgeInsets.only(left:12.0),
                child: Text("Specifications",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
              ),
              Row(
                children: [
                  Expanded(
                    child: DropdownButton(
                      padding: EdgeInsets.all(20),
                      hint: val == null
                          ? Text('Dropdown')
                          : Text(
                        val,
                      ),
                      isExpanded: true,
                      iconSize: 30.0,
                      style: TextStyle(color: Colors.orange),
                      items: l2.map(
                            (val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: Text(val),
                          );
                        },
                      ).toList(),
                      onChanged: (value) {
                        setState(
                              () {
                            val = value!;
                          },
                        );
                      },
                    )
                  ),


                  Expanded(
                    child: DropdownButton(
                      padding: EdgeInsets.all(20),
                      hint: valv == null
                          ? Text('Dropdown')
                          : Text(
                        valv,
                      ),
                      isExpanded: true,
                      iconSize: 30.0,
                      style: TextStyle(color: Colors.orange),
                      items: l1.map(
                            (valv) {
                          return DropdownMenuItem<String>(
                            value: valv,
                            child: Text(valv),
                          );
                        },
                      ).toList(),
                      onChanged: (value) {
                        setState(
                              () {
                            valv = value!;
                          },
                        );
                      },
                    )
                  )
                ],
              ),

            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.grey,width: 0.4))),
        height: 80,
        child: Padding(
          padding: const EdgeInsets.only(top:5.0,left: 20,right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Price:",style: TextStyle(fontSize: 16),),
                  SizedBox(width: 10,),
                  Text("\u{20B9}${widget.cost}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
                  SizedBox(width: 5,),
                  Text("\u{20B9}${widget.oldcost}",style: TextStyle(fontSize: 14,color:Colors.blueGrey,decoration: TextDecoration.lineThrough),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){},icon:Icon(Bootstrap.heart,color: Colors.orange,)),
                  // Container(
                  //   width: 34,
                  //   height: 37,
                  //   decoration: BoxDecoration(color: CupertinoColors.systemGrey5,borderRadius: BorderRadius.circular(6)),
                  //   child: IconButton(onPressed: (){},icon:Icon(Bootstrap.heart_fill,color: Colors.orange,)),
                  // ),
                  SizedBox(width: 6,),
                  Expanded(
                    child: ButtonTheme(minWidth: 200, child:ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(primary: Colors.orange), child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("ADD TO CART"),
                        Icon(Icons.shopping_cart)
                      ],
                    ))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
