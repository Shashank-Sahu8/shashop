import 'package:provider/provider.dart';
import 'package:finallyshop/models/model.dart';
import 'package:flutter/material.dart';
import 'package:finallyshop/models/product_item.dart';
import 'package:finallyshop/models/product_item.dart';


class trending extends StatelessWidget {
  const trending({super.key});

  @override
  Widget build(BuildContext context) {
    final productdata=Provider.of<Products>(context);
    final pro=productdata.trending;
    return ListView.builder(
      shrinkWrap: true,
        primary: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: pro.length,
        itemBuilder:(context, index) => ChangeNotifierProvider.value(value: pro[index],child: product_item(name: pro[index].name,image: pro[index].image,description: pro[index].description,cost: pro[index].cost,oldcost: pro[index].oldcost,),), );
  }
}
