import 'package:flutter/material.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/bottomnav/home.dart';
import 'package:finallyshop/bottomnav/account.dart';
import 'package:finallyshop/bottomnav/cart.dart';
import 'package:finallyshop/bottomnav/categories.dart';
import 'package:finallyshop/bottomnav/deals.dart';
import 'package:finallyshop/list.dart';
import 'package:finallyshop/models/model.dart';
import 'package:get/get.dart';
import 'package:finallyshop/models/detailproduct.dart';

import 'package:provider/provider.dart';
class Search extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: (){query='';},
          icon:const Icon(Icons.clear)
      )
    ];
  }
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){close(context, null);}, icon: const Icon(Icons.arrow_back));
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    final productlis=Provider.of<Products>(context);
    final prodd=productlis.allProduct;
    final prod=query.isEmpty? productlis.allProduct:productlis.allProduct.where((p) => p.name.startsWith(query[0].toUpperCase())).toList();
    return prod.isEmpty?Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text('No such result found...',style: TextStyle(color: Colors.grey,fontSize: 18),),
    ): ListView.builder(
      itemCount: prod.length,
        itemBuilder: (context,index){
        return ListTile(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>detailproduct(cost: prodd[index].cost, oldcost: prodd[index].oldcost, description: prodd[index].description, image: prodd[index].image, image2: prodd[index].image2, image3: prodd[index].image3, image4: prodd[index].image4, productModel: prodd[index].productModel, name: prodd[index].name)));},
          title: Padding(
          padding: const EdgeInsets.only(top:6.0,),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(prod[index].name,style: TextStyle(fontSize: 15),),
                  Text(prod[index].productModel),
                ],
              ),
              Align(alignment: Alignment.centerLeft,child: Text(prod[index].description,style: TextStyle(fontSize: 12,color: Colors.deepOrangeAccent),)),
              Divider(color: Colors.grey,)
            ],
          ),
        ),);
        }
    );
  }
  @override
  Widget buildResults(BuildContext context) {
   return Center(child: Text(query,style: TextStyle(color: Colors.grey,fontSize: 20),),);
  }

}
