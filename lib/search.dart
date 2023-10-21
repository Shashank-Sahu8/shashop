import 'package:flutter/material.dart';
import 'package:finallyshop/main.dart';
import 'package:finallyshop/home.dart';
import 'package:finallyshop/account.dart';
import 'package:finallyshop/cart.dart';
import 'package:finallyshop/categories.dart';
import 'package:finallyshop/deals.dart';
import 'package:finallyshop/list.dart';



class Search extends SearchDelegate{
  List<String>allData=['Tools','Watches','Grocery','mobile','Iphone','Accessories','cloths','mens','Womens','Children','Books','Bag','Perfumes','Toys'];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){query='';}, icon: Icon(Icons.clear))
    ];
  }
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){close(context, null);}, icon: const Icon(Icons.arrow_back));
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String>matchQuery=[];
    for(var item in allData){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }}
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context,index){
          var result=matchQuery[index ];
          return ListTile(
            title: Text(result),
          );
        }
    );
  }
  @override
  Widget buildResults(BuildContext context) {
    List<String>matchQuery=[];
    for(var item in allData)
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    return ListView.builder(
        itemBuilder: (context,index){
          var result=matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        }
    );
  }

}
