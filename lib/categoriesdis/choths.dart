import 'package:provider/provider.dart';
import 'package:finallyshop/models/model.dart';
import 'package:flutter/material.dart';
import 'package:finallyshop/models/product_item.dart';
import 'package:finallyshop/models/product_item.dart';

class clothss extends StatelessWidget {
  const clothss({super.key});

  @override
  Widget build(BuildContext context) {
    final productdata=Provider.of<Products>(context);
    final pro=productdata.colothsData;
    return GridView.builder(
      shrinkWrap: true,
      primary: true,
      physics: NeverScrollableScrollPhysics() ,
      itemCount: pro.length,
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 7,crossAxisSpacing: 10,mainAxisExtent: 281,childAspectRatio: 0.7),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(value: pro[index],child: product_item(name: pro[index].name,image: pro[index].image,description: pro[index].description,cost: pro[index].cost,oldcost: pro[index].oldcost,),),
    );
  }
}
