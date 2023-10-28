import 'package:provider/provider.dart';
import 'package:finallyshop/model.dart';
import 'package:flutter/material.dart';
import 'package:finallyshop/product_item.dart';
import 'package:finallyshop/product_item.dart';

class allproductscl extends StatelessWidget {
  const allproductscl({super.key});

  @override
  Widget build(BuildContext context) {
    final productdata=Provider.of<Products>(context);
    final pro=productdata.items;
    return GridView.builder(
        physics: ScrollPhysics(),
        itemCount: pro.length,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 7,crossAxisSpacing: 10,mainAxisExtent: 260),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(value: pro[index],child: product_item(name: pro[index].name,image: pro[index].image,description: pro[index].description,cost: pro[index].cost,),),
    );
  }
}
