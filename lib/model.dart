
import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String name;
  final String description;
  final String cost;
  final String image;
  Product(
  {required this.id,
  required this.name,
  required this.description,
  required this.image,
  required this.cost});
}

class Products with ChangeNotifier{
  List<Product> _items=[
     Product(id: '1', name: 'T-shirt', description: 'It is a trending T-shirt', image: 'assets/shop.cloth1.jpg', cost: '50'),
    Product(id: '2', name: 'Shirt', description: 'It is a perfect Shirt', image: 'assets/shop.cloth2.jpg', cost: '40'),
    Product(id: '3', name: 'Jeans', description: 'Slim Fit jeans', image: 'assets/shop.cloth3.jpg', cost: '50'),
    Product(id: '4', name: 'Jeans', description: 'Fit jeans for mens', image: 'assets/shop.cloth4.jpg', cost: '50'),
    Product(id: '5', name: 'Tops', description: 'trending tops', image:'assets/shop.cloth5.jpg', cost: '50'),
    Product(id: '6', name: 'New Tops', description: 'trending cloths', image: 'assets/shop.cloth6.jpg', cost: '50'),
    Product(id: '7', name: 'cloth', description: 'trending', image: 'assets/shop.cloth7.jpg', cost: '50'),
    Product(id: '1', name: 'cloth', description: 'trending', image: 'assets/shop.cloth8.jpg', cost: '50')
  ];

  List<Product>get items{
    return [..._items];
  }
}
