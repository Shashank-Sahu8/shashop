import 'package:finallyshop/beauty_product.dart';
import 'package:finallyshop/cart.dart';
import 'package:finallyshop/cart_controller.dart';
import 'package:finallyshop/gadgets.dart';
import 'package:finallyshop/phone.dart';
import 'package:finallyshop/watch.dart';
import 'package:flutter/material.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/account.dart';
import 'package:finallyshop/categories.dart';
import 'package:finallyshop/deals.dart';
import 'package:finallyshop/list.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:finallyshop/search.dart';
import 'package:flutter/animation.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:finallyshop/sale1.dart';
import 'package:flutter/animation.dart';
import 'package:finallyshop/cloth_section.dart';
import 'package:finallyshop/footwear.dart';
List<String> product_id=[
  '11','22','33','44','55','66','77','88'
];
List<String> product_image=[
  'assets/silas-sousa-bL9x_AGx7jQ-unsplash-removebg-preview.png','assets/tts-removebg-preview.png','assets/shop_cloth3..png','assets/shop_cloth7-removebg-preview.png','assets/shop_cloth5-removebg-preview.png','assets/shop_cloth6-removebg-preview.png','assets/shop_cloth4-removebg-preview.png','assets/shop_cloth8-removebg-preview.png'
];

List <String> product_name=['T-shirt','Shirt','Jeans','Jeans','Tops','New Tops','cloth','cloth'
];

List <String> product_cost=['\$50','\$40','\$100','\$120','\$80','\$90','\$34','\$98'
];

List <String> product_discreption=['It is a trending T-shirt','It is a perfect Shirt','Slim Fit jeans','Fit jeans for mens','trending tops','trending cloths','trending','trending'
];


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
List imageList =[
  {"id":1,"image_path":'assets/slider5er.jpg'},
  {"id":2,"image_path":'assets/sale4_slider_shop.jpg'},
  {"id":3,"image_path":'assets/sale3_slider_shop.jpg'},
  {"id":4,"image_path":'assets/sale_slider_shop.jpg'},
  {"id":5,"image_path":'assets/sale2_slider_shop.jpg'}
];
final cartController=Get.put(CartController());
final CarouselController carouselController = CarouselController();
int car_currentindex=0
;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        actions: [Column(
          children: [
            IconButton(
                highlightColor: Color(0xfffa8128),
                onPressed: ()=>{},
                icon: Icon(Icons.login,
                  color: Color(0xff536878),
                  size: 33,
                )),
            IconButton(
                highlightColor: Color(0xfffa8128),
                onPressed: ()=>cart(),
                icon: Icon(Icons.shopping_cart,
                  color: Colors.white54,
                ))
          ],
        ),
        ],

        backgroundColor: Colors.white,
        elevation: 2.0,
        shadowColor: Colors.white38,
        title: Container(
          child: new Column(
            children: [
              new Row(
                    children: [
                      new Text("shashop",style: TextStyle(color: Colors.black,fontSize: 35,fontFamily: 'FjallaOne'
                          ''),),
                      SizedBox(width: 7,),
                      CircleAvatar(radius:22,backgroundColor: Color(0xfffa8128),child: Text("S",style: TextStyle(color: Colors.white,fontSize: 32,fontFamily: 'TiltNeon',fontWeight: FontWeight.bold),),)
                    ],
                  ),
              GestureDetector(
                onTap: () {showSearch(context: context, delegate: Search());},
                child: new Container(
                  child: new Container(
                    margin:EdgeInsets.only(right: 180) ,
                    child: Row(
                      children: [
                        Icon(Icons.search,color: Colors.grey,),
                        SizedBox(width: 10,),
                        Text("Search",style: TextStyle(color: Colors.grey,fontSize: 20),)
                      ],
                    ),
                    
                  ),
                  margin: EdgeInsets.only(bottom: 10,top: 10,),
                  height: 40,

                  width: 7510,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    boxShadow: [BoxShadow(color: Colors.white54,spreadRadius: 1,
                        blurRadius: 15),],
                    borderRadius: BorderRadius.circular(8),
                  ),
                )
              ),
            ],


          ),
        ),
      ),

      body:
      SingleChildScrollView(
       scrollDirection: Axis.vertical,
      child:Container(
        child: Column(
          children: <Widget>[
             Column(
              children: [
                 Stack(
                  children: [
                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>deals()));},
                      child:  CarouselSlider(
                        items:  imageList.map(
                            (item)=>Image.asset(item['image_path'],
                            fit: BoxFit.cover,
                            width: double.infinity,
                            ),
                        ) .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,

                          aspectRatio: 2,
                          viewportFraction: 1,
                          onPageChanged: (index,reason){
                            setState(() {
                              car_currentindex=index;
                            });
                          }
                        ),
                      ),
                    ),
                  ],
                )



              ],
            ),
            Padding(
            padding: EdgeInsets.only(top: 10,left: 10),
            child: Column(
              children: [
            Align(alignment: Alignment.bottomLeft,child: new Text("Featured Categories",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: new Container(
                height: 90,
                child: Row(
                  children: [
                    InkWell(
                      onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>cloth_Section()))},
                      child: Column(
                        children: [
                          CircleAvatar(backgroundColor: Colors.black,radius: 35,backgroundImage:AssetImage('assets/shop_cloths.jfif')),
                          Text("Cloths"),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    InkWell(onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>footwear()))},
                      child: Column(
                        children: [
                          CircleAvatar(backgroundColor: Colors.black,radius: 35,backgroundImage: AssetImage('assets/shop_footwears.jfif'),),
                          Text("Footwears"),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),


                    InkWell(
                      onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>phone()))},
                      child: Column(
                        children: [
                          CircleAvatar(backgroundColor: Colors.black,radius: 35,backgroundImage: AssetImage('assets/shop_phones.jfif'),),
                          Text("Phones"),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),


                    InkWell(
                      onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>watch()))},
                      child: Column(
                        children: [
                          CircleAvatar(backgroundColor: Colors.black,radius: 35,backgroundImage: AssetImage('assets/shop_watches.webp'),),
                          Text("Watches"),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),


                    InkWell(
                      onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>beauty_product()))},
                      child: Column(
                        children: [
                          CircleAvatar(backgroundColor: Colors.black,radius: 35,backgroundImage: AssetImage('assets/shop_beauty.jfif'),),
                          Text("Beauty Products"),
                        ],
                      ),
                    ),

                    InkWell(
                      onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>gadgets()))},
                      child: Column(
                        children: [
                          CircleAvatar(backgroundColor: Colors.black,radius: 35,backgroundImage: AssetImage('assets/gadgets.jfif'),),
                          Text("Gadgets"),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            ],
            ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(alignment: Alignment.centerLeft,child: Text("Top",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
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
                                        IconButton(onPressed: ()=>{counter++,print("liked press"),
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                Future.delayed(Duration(milliseconds: 400), () {
                                                  Navigator.of(context).pop(true);
                                                });
                                                return AlertDialog(
                                                  title: Row(children: [Icon(FontAwesome.circle_check,color: Colors.green,),SizedBox(width: 10,),Text('Added to cart')],),
                                                );
                                              })
                                        }, icon: Icon(FontAwesome.heart))
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
                                        IconButton(onPressed: ()=>{

                                          counter++,
                                          print("liked click"),
                                          showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                      Future.delayed(Duration(milliseconds: 400), () {
                                                      Navigator.of(context).pop(true);
                                                  });
                                                  return AlertDialog(
                                                      title: Row(children: [Icon(FontAwesome.circle_check,color: Colors.green,),SizedBox(width: 10,),Text('Added to cart')],),
                                                  );
                                        })
                                        }, icon: Icon(FontAwesome.heart))
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
    ),
    );
  }
}
