import 'package:flutter/material.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/search.dart';
import 'package:finallyshop/cart.dart';
class deals extends StatefulWidget {
  const deals({super.key});

  @override
  State<deals> createState() => _dealsState();
}

class _dealsState extends State<deals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.blueGrey,),
        toolbarHeight: 60,
        elevation: 2.0,
        shadowColor: Colors.white38,
        title: Align(alignment: Alignment.topLeft,child: Text("Deals",style: TextStyle(color: Colors.black87,fontSize: 24),)),
        actions: [
          IconButton(highlightColor: Color(0xfffa8128),onPressed: (){showSearch(context: context, delegate: Search());}, icon: Icon(Icons.search,color: Colors.blueGrey,size: 30,)),
          IconButton(highlightColor: Color(0xfffa8128),onPressed: ()=>{}, icon: Badge(child: Icon(Icons.shopping_cart,size: 30,color: Colors.blueGrey,),label: Text("$counter"))),


        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/slider5er.jpg'),fit: BoxFit.cover
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Icon(Icons.subdirectory_arrow_right_rounded,),
                    SizedBox(width: 5,),
                    Align(alignment:Alignment.bottomLeft,child: ElevatedButton(onPressed: (){}, child: Text('Avail Offer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,color: Colors.white),),style: ElevatedButton.styleFrom(primary: Color(0xfffa8128)),)),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/sale4_slider_shop.jpg'),fit: BoxFit.cover
                    )
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Icon(Icons.subdirectory_arrow_right_rounded,),
                    SizedBox(width: 5,),
                    Align(alignment:Alignment.bottomLeft,child: ElevatedButton(onPressed: (){}, child: Text('Avail Offer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,color: Colors.white),),style: ElevatedButton.styleFrom(primary: Color(0xfffa8128)),)),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/sale3_slider_shop.jpg'),fit: BoxFit.cover
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Icon(Icons.subdirectory_arrow_right_rounded,),
                    SizedBox(width: 5,),
                    Align(alignment:Alignment.bottomLeft,child: ElevatedButton(onPressed: (){}, child: Text('Avail Offer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,color: Colors.white),),style: ElevatedButton.styleFrom(primary: Color(0xfffa8128)),)),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/sale_slider_shop.jpg'),fit: BoxFit.cover
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Icon(Icons.subdirectory_arrow_right_rounded,),
                    SizedBox(width: 5,),
                    Align(alignment:Alignment.bottomLeft,child: ElevatedButton(onPressed: (){}, child: Text('Avail Offer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,color: Colors.white),),style: ElevatedButton.styleFrom(primary: Color(0xfffa8128)),)),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/sale2_slider_shop.jpg'),fit: BoxFit.cover
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: [
                    Icon(Icons.subdirectory_arrow_right_rounded,),
                    SizedBox(width: 5,),
                    Align(alignment:Alignment.bottomLeft,child: ElevatedButton(onPressed: (){}, child: Text('Avail Offer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,color: Colors.white),),style: ElevatedButton.styleFrom(primary: Color(0xfffa8128)),)),
                  ],
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
