import 'package:finallyshop/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  var _product={}.obs;
  void addProduct(i){
    Get.snackbar("Product Added", "You have apped the ${i}",
    snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2)
    );
  }
}