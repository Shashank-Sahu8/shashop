
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
     Product(id: '1', name: 'T-shirt', description: 'It is a trending T-shirt', image: 'assets/silas-sousa-bL9x_AGx7jQ-unsplash-removebg-preview.png', cost: '50'),
    Product(id: '2', name: 'Shirt', description: 'It is a perfect Shirt', image: 'assets/shop_cloth3..png', cost: '40'),
    Product(id: '3', name: 'Jeans', description: 'Slim Fit jeans', image: 'assets/shop_cloth7-removebg-preview.png', cost: '50'),
    Product(id: '4', name: 'Jeans', description: 'Fit jeans for mens', image: 'assets/shop_cloth5-removebg-preview.png', cost: '50'),
    Product(id: '5', name: 'Tops', description: 'trending tops', image:'assets/shop_cloth6-removebg-preview.png', cost: '50'),
    Product(id: '6', name: 'New Tops', description: 'trending cloths', image: 'assets/shop_cloth4-removebg-preview.png', cost: '50'),
    Product(id: '7', name: 'cloth', description: 'trending', image: 'assets/shop_cloth8-removebg-preview.png', cost: '50'),
    Product(id: '1', name: 'cloth', description: 'trending', image: 'assets/silas-sousa-bL9x_AGx7jQ-unsplash-removebg-preview.png', cost: '50')
  ];

  List<Product>get items{
    return [..._items];
  }
}
