import 'package:finallyshop/cart.dart';
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
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
List imageList =[
  {"id":1,"image_path":'assets/slider1er.png'},
  {"id":2,"image_path":'assets/slider2.jpg'},
  {"id":3,"image_path":'assets/slider3.jfif'},
  {"id":4,"image_path":'assets/slider4.jfif'},
  {"id":5,"image_path":'assets/slider5er.jpg'}
];

List<String> product_image=[
  'assets/tts-removebg-preview.png','assets/silas-sousa-bL9x_AGx7jQ-unsplash-removebg-preview.png'
];

List <String> product_name=['T-shirt','Shirt'];

List <String> product_cost=['\$50','Shirt'];

List <String> product_discreption=['It is a T-shirt','It is a Shirt'];

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
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>sale1()));},
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
                      onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>sale1()))},
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

                    InkWell(onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>sale1()))},
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
                      onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>sale1()))},
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
                      onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>sale1()))},
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
                      onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>sale1()))},
                      child: Column(
                        children: [
                          CircleAvatar(backgroundColor: Colors.black,radius: 35,backgroundImage: AssetImage('assets/shop_beauty.jfif'),),
                          Text("Beauty Products"),
                        ],
                      ),
                    ),

                    InkWell(
                      onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>sale1()))},
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
            for(int i=0;i<product_image.length/2;i++)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [


                              Stack(
                                children: [
                                 Container(
                                    height: 150,
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
                              Text(product_name[i],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                              Text(product_name[i],style: TextStyle(fontSize: 15,color: Colors.deepOrangeAccent),),
                              Text(product_cost[i],style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)


                            ],
                          ),
                        ),
                      ),

                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
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
                              )

                            ],
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
