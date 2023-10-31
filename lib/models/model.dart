
import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String productModel;
  final String name;
  final String description;
  final String cost;
  final String image;
  final String image2;
  final String image3;
  final String image4;
  final String oldcost;

  Product(
  {required this.productModel,
  required this.name,
  required this.description,
  required this.image,
    required this.image2,
    required this.image3,
    required this.image4,
  required this.cost,
    required this.oldcost
  });
}

class Products with ChangeNotifier{



  List<Product> sigleProductData = [
    Product(
      description: 'this is new product',
        image:
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/57d461193168475e8eecab4501127ab6_9366/Falcon_Shoes_Pink_FX7196_01_standard.jpg',
        productModel: 'Sneakers',
        name: 'Falcon Clear Pink',
        oldcost: '105',
        cost: '70',
        image4: 'https://media.endclothing.com/media/f_auto,w_600,h_600/prodmedia/media/catalog/product/2/8/28-01-2020_adidas_falconw_clearpink_fv4660_jm_1.jpg',
        image2: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/a8208eb34e7249f280e0aae800f486cf_9366/Falcon_Shoes_Pink_FV4660_04_standard.jpg',
        image3: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/46f2b6a4a05740aa9e83ac5d00e45b7f_9366/Falcon_Shoes_Pink_FV8278_05_standard.jpg'
    ),
    Product(
        description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/81pNZrg3XmL._SY550_.jpg',
        productModel: 'Hoodies',
        name: 'Essentials Linear',
        oldcost: '80',
        cost: '60',
        image4: 'https://m.media-amazon.com/images/I/8135nira+uL._SY550_.jpg',
        image2: 'https://m.media-amazon.com/images/I/816FHbomIaL._SY550_.jpg',
        image3: 'https://m.media-amazon.com/images/I/81gbwNER65L._SY550_.jpg'
    ),
    Product(
        description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/41P-MHBJ-xL._SY679_.jpg',
        productModel: 'T-Shirt',
        name: 'Own The Run Tee',
        oldcost: '60',
        cost: '40',
        image4: 'https://m.media-amazon.com/images/I/41pkxOPT7oL._SY550_.jpg',
        image2: 'https://m.media-amazon.com/images/I/41E5FoSuMzL._SY550_.jpg',
        image3: 'https://m.media-amazon.com/images/I/41eubSrblwL._SY550_.jpg'
    ),

    Product(
        description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/71Kf9M5jEqL._SX569_.jpg',
        productModel: 'Shorts',
        name: 'Ultimate 365',
        oldcost: '75',
        cost: '50',
        image4: 'https://m.media-amazon.com/images/I/71IUwDMMy9L._SL1500_.jpg',
        image2: 'https://m.media-amazon.com/images/I/71VZKGx6fRL._SL1500_.jpg',
        image3: 'https://m.media-amazon.com/images/I/31-MDI8LEcL.jpg'
    ),
    Product(
        description: 'this is new product',
        image:
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/91b7dd603a0d4f178221a9b601126d2d_9366/POD-S3.1_Shoes_White_DB3537_01_standard.jpg',
        productModel: 'Sneakers',
        name: 'Pod-S 3.1',
        oldcost: '140',
        cost: '100',
        image4: 'https://m.media-amazon.com/images/I/71BK8-J4P5L._SY500_.jpg',
        image2: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/c8ed15f67e1f4921839ba9b60112b268_9366/POD-S3.1_Shoes_White_DB3537.jpg',
        image3: 'https://m.media-amazon.com/images/I/71tPKdVkEhL._SY500_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/91wEL6MZRYL._SX522_.jpg',
        productModel: 'Jackets',
        name: 'Floral Track',
        oldcost: '140',
        cost: '99',
        image4: 'https://m.media-amazon.com/images/I/81cmPpF57fL._SY550_.jpg',
        image2: 'https://m.media-amazon.com/images/I/71ACoakiBOL._SY550_.jpg',
        image3: 'https://m.media-amazon.com/images/I/81wNW9Hcv2L._SY550_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/5adc6dabf52a4b23a97baa060176638a_9366/Rivalry_RM_Low_Shoes_Beige_EE4989_01_standard.jpg',
        productModel: 'Sneakers',
        name: 'Rivalry RM Low',
        oldcost: '158',
        cost: '130',
        image4: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/590d3dfc6f7c43f2a492aa070012601b_9366/Rivalry_RM_Low_Shoes_Beige_EE4989.jpg',
        image2: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/64515af34c5844289b5daa060178bd6f_9366/Rivalry_RM_Low_Shoes_Beige_EE4989_05_standard.jpg',
        image3: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/991b7aee890647449e80aa06017ee41c_9366/Rivalry_RM_Low_Shoes_Beige_EE4989_03_standard.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/7bc377c6a8b549c1b823aa4e00882499_9366/Rivalry_RM_Low_Shoes_Black_EE4987_01_standard.jpg',
        productModel: 'Sneakers',
        name: 'Rivalry RM Low',
        oldcost: '158',
        cost: '130',
        image4: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/d142bbed034f488e850caa4e00885595_9366/Rivalry_RM_Low_Shoes_Black_EE4987.jpg',
        image2: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/94da80a6059249629624aa4e0088612b_9366/Rivalry_RM_Low_Shoes_Black_EE4987_05_standard.jpg',
        image3: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/d142bbed034f488e850caa4e00885595_9366/Rivalry_RM_Low_Shoes_Black_EE4987.jpg'
    ),
    Product(
        description: 'this is new product',
        image:
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/57d461193168475e8eecab4501127ab6_9366/Falcon_Shoes_Pink_FX7196_01_standard.jpg',
        productModel: 'Sneakers',
        name: 'Falcon Clear Pink',
        oldcost: '105',
        cost: '70',
        image4: 'https://media.endclothing.com/media/f_auto,w_600,h_600/prodmedia/media/catalog/product/2/8/28-01-2020_adidas_falconw_clearpink_fv4660_jm_1.jpg',
        image2: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/a8208eb34e7249f280e0aae800f486cf_9366/Falcon_Shoes_Pink_FV4660_04_standard.jpg',
        image3: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/46f2b6a4a05740aa9e83ac5d00e45b7f_9366/Falcon_Shoes_Pink_FV8278_05_standard.jpg'
    ),
    Product(
        description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/81pNZrg3XmL._SY550_.jpg',
        productModel: 'Hoodies',
        name: 'Essentials Linear',
        oldcost: '80',
        cost: '60',
        image4: 'https://m.media-amazon.com/images/I/8135nira+uL._SY550_.jpg',
        image2: 'https://m.media-amazon.com/images/I/816FHbomIaL._SY550_.jpg',
        image3: 'https://m.media-amazon.com/images/I/81gbwNER65L._SY550_.jpg'
    ),
    Product(
        description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/41P-MHBJ-xL._SY679_.jpg',
        productModel: 'T-Shirt',
        name: 'Own The Run Tee',
        oldcost: '60',
        cost: '40',
        image4: 'https://m.media-amazon.com/images/I/41pkxOPT7oL._SY550_.jpg',
        image2: 'https://m.media-amazon.com/images/I/41E5FoSuMzL._SY550_.jpg',
        image3: 'https://m.media-amazon.com/images/I/41eubSrblwL._SY550_.jpg'
    ),

    Product(
        description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/71Kf9M5jEqL._SX569_.jpg',
        productModel: 'Shorts',
        name: 'Ultimate 365',
        oldcost: '75',
        cost: '50',
        image4: 'https://m.media-amazon.com/images/I/71IUwDMMy9L._SL1500_.jpg',
        image2: 'https://m.media-amazon.com/images/I/71VZKGx6fRL._SL1500_.jpg',
        image3: 'https://m.media-amazon.com/images/I/31-MDI8LEcL.jpg'
    ),
    Product(
        description: 'this is new product',
        image:
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/91b7dd603a0d4f178221a9b601126d2d_9366/POD-S3.1_Shoes_White_DB3537_01_standard.jpg',
        productModel: 'Sneakers',
        name: 'Pod-S 3.1',
        oldcost: '140',
        cost: '100',
        image4: 'https://m.media-amazon.com/images/I/71BK8-J4P5L._SY500_.jpg',
        image2: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/c8ed15f67e1f4921839ba9b60112b268_9366/POD-S3.1_Shoes_White_DB3537.jpg',
        image3: 'https://m.media-amazon.com/images/I/71tPKdVkEhL._SY500_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/91wEL6MZRYL._SX522_.jpg',
        productModel: 'Jackets',
        name: 'Floral Track',
        oldcost: '140',
        cost: '99',
        image4: 'https://m.media-amazon.com/images/I/81cmPpF57fL._SY550_.jpg',
        image2: 'https://m.media-amazon.com/images/I/71ACoakiBOL._SY550_.jpg',
        image3: 'https://m.media-amazon.com/images/I/81wNW9Hcv2L._SY550_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/5adc6dabf52a4b23a97baa060176638a_9366/Rivalry_RM_Low_Shoes_Beige_EE4989_01_standard.jpg',
        productModel: 'Sneakers',
        name: 'Rivalry RM Low',
        oldcost: '158',
        cost: '130',
        image4: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/590d3dfc6f7c43f2a492aa070012601b_9366/Rivalry_RM_Low_Shoes_Beige_EE4989.jpg',
        image2: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/64515af34c5844289b5daa060178bd6f_9366/Rivalry_RM_Low_Shoes_Beige_EE4989_05_standard.jpg',
        image3: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/991b7aee890647449e80aa06017ee41c_9366/Rivalry_RM_Low_Shoes_Beige_EE4989_03_standard.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/7bc377c6a8b549c1b823aa4e00882499_9366/Rivalry_RM_Low_Shoes_Black_EE4987_01_standard.jpg',
        productModel: 'Sneakers',
        name: 'Rivalry RM Low',
        oldcost: '158',
        cost: '130',
        image4: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/d142bbed034f488e850caa4e00885595_9366/Rivalry_RM_Low_Shoes_Black_EE4987.jpg',
        image2: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/94da80a6059249629624aa4e0088612b_9366/Rivalry_RM_Low_Shoes_Black_EE4987_05_standard.jpg',
        image3: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/d142bbed034f488e850caa4e00885595_9366/Rivalry_RM_Low_Shoes_Black_EE4987.jpg'
    ),
  ];
////////////////////////////// Cloths.............
  List<Product> colothsData = [
    Product(description: 'this is new product',

        image:
        'https://m.media-amazon.com/images/I/619P60hIUML._SY679_.jpg',
        productModel: 'Short',
        name: 'Textured epic shorts',
        oldcost: '50',
        cost: '44',
        image4: 'https://m.media-amazon.com/images/I/611yjjNYPQL._SY550_.jpg',
        image2: 'https://m.media-amazon.com/images/I/61C-qsIz6FL._SY550_.jpg',
        image3: 'https://m.media-amazon.com/images/I/61Jsjz4sq9L._SX679_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/31CJUHrMMVL._SY445_SX342_.jpg',
        productModel: 'jacket',
        name: 'Classics vector track jacket',
        oldcost: '100',
        cost: '90',
        image4: 'https://m.media-amazon.com/images/I/61wmm-P3-6L._SY550_.jpg',
        image2: 'https://m.media-amazon.com/images/I/71iuVbVULTL._SY550_.jpg',
        image3: 'https://m.media-amazon.com/images/I/61PWxuo8SSL._SY550_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/81wotFnXqLL._SX522_.jpg',
        productModel: 'Jacket',
        name: 'Utility field vest',
        oldcost:'80',
        cost: '65',
        image4: 'https://m.media-amazon.com/images/I/81btXaUzfAL._SX522_.jpg',
        image2: 'https://m.media-amazon.com/images/I/81xGkExHw-L._SX522_.jpg',
        image3: 'https://m.media-amazon.com/images/I/91soYecyu-L._SX522_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/81RaPRuTSiL._SY550_.jpg',
        productModel: 'Sweat-Shirts',
        name: 'Myt crew sweatshirt',
        oldcost: '50',
        cost: '40',
        image4: 'https://m.media-amazon.com/images/I/81FNE9-gNDL._SY550_.jpg',
        image2: 'https://m.media-amazon.com/images/I/61hCbiQexOL._SY550_.jpg',
        image3: 'https://m.media-amazon.com/images/I/71jStq0RAlL._SY550_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/61qK-LMwdqL._SY879_.jpg',
        productModel: 'T-shirt',
        name: 'Allen Iverson I3 3I Logo T-Shirt',
        oldcost: '40',
        cost: '30',
        image4: 'https://m.media-amazon.com/images/I/61sO9e1xB2L._SY741_.jpg',
        image2: 'https://m.media-amazon.com/images/I/61V113w5M5L._SY741_.jpg',
        image3: 'https://m.media-amazon.com/images/I/61+mNOFM3ZL._SY741_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/41-6yRda71L._SX679_.jpg',
        productModel: 'Pants',
        name: 'knit track pants',
        oldcost: '70',
        cost: '55',
        image4: 'https://m.media-amazon.com/images/I/41dluSzdB0L._SX522_.jpg',
        image2: 'https://m.media-amazon.com/images/I/41JlFA0HYvL._SX522_.jpg',
        image3: 'https://m.media-amazon.com/images/I/41MZnptvI2L._SX522_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/51CHzirfbnL._SX522_.jpg',
        productModel: 'Tank-tops',
        name: 'Workout_Ready_Tech_Tee_Orange',
        oldcost: '30',
        cost: '20',
        image4: 'https://m.media-amazon.com/images/I/611zIZmI19L._SX522_.jpg',
        image2: 'https://m.media-amazon.com/images/I/51dHYAFBF1L._SX522_.jpg',
        image3: 'https://m.media-amazon.com/images/I/61BWtvcDsAL._SX522_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/71n97mI1RjS._SX569_.jpg',
        productModel: 'Tank-tops',
        name: 'Classics mesh tank top',
        oldcost: '40',
        cost: '34',
        image4: 'https://m.media-amazon.com/images/I/71YRzgujqOS._SX466_.jpg',
        image2: 'https://m.media-amazon.com/images/I/71KOqVN1vQS._SX466_.jpg',
        image3: 'https://m.media-amazon.com/images/I/81qv17d05cS._SX466_.jpg'
    ),
  ];
////////////////////////////// shoes.............
  List<Product> shoesData = [
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/71CdzxJi+ML._SX500_.jpg',
        productModel: 'Men Cross Training',
        name: 'Nano x1 lux',
        oldcost: '180',
        cost: '150',
        image4: 'https://m.media-amazon.com/images/I/71hy0E9Nl6L._SY575_.jpg',
        image2: 'https://m.media-amazon.com/images/I/71f9z+wBTYL._SX500_.jpg',
        image3: 'https://m.media-amazon.com/images/I/71LwjwyQSNL._SY675_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/51B+BiqDWyL._SY575_.jpg',
        productModel: 'Classic',
        name: 'Classic leather legancy shoes',
        oldcost: '100',
        cost: '80',
        image4: 'https://m.media-amazon.com/images/I/514pNKXpAzL._SY500_.jpg',
        image2: 'https://m.media-amazon.com/images/I/517kA7Vj27L._SY500_.jpg',
        image3: 'https://m.media-amazon.com/images/I/41EtB2-VjqL._SY500_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/61B2cLc4SSL._SY575_.jpg',
        productModel: 'Men Cross training',
        name: 'Reebok nano x shoes',
        oldcost:'150',
        cost: '130',
        image4: 'https://m.media-amazon.com/images/I/61WU167LMeL._SY500_.jpg',
        image2: 'https://m.media-amazon.com/images/I/51Xd3TBt4zL._SY500_.jpg',
        image3: 'https://m.media-amazon.com/images/I/51Xd3TBt4zL._SY500_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/618yWewi1GL._SY575_.jpg',
        productModel: 'Classic',
        name: 'Workout plus shoes',
        oldcost: '100',
        cost: '80',
        image4: 'https://m.media-amazon.com/images/I/61ql8CAXiwL._SY500_.jpg',
        image2: 'https://m.media-amazon.com/images/I/61rI8iMKwTL._SY500_.jpg',
        image3: 'https://m.media-amazon.com/images/I/71AkIbWM0jL._SY500_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/61KJQRMudwS._SX500_.jpg',
        productModel: 'LifeStyle',
        name: 'Braindead zig kinetica ll shoes',
        oldcost: '180',
        cost: '160',
        image4: 'https://m.media-amazon.com/images/I/61NxXjQh58S._SX500_.jpg',
        image2: 'https://m.media-amazon.com/images/I/61N07gJpS8S._SX500_.jpg',
        image3: 'https://m.media-amazon.com/images/I/71ceLnBl3aS._SX500_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/613+hnpIKrL._SY500_.jpg',
        productModel: 'Men Classic',
        name: 'Club c revenge shoes',
        oldcost: '80',
        cost: '74',
        image4: 'https://m.media-amazon.com/images/I/61+IGF2s9dL._SY500_.jpg',
        image2: 'https://m.media-amazon.com/images/I/61z-RR6ePSL._SY500_.jpg',
        image3: 'https://m.media-amazon.com/images/I/61twnTA9ArL._SY500_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/810v4s8EGbL._SX500_.jpg',
        productModel: 'Classic',
        name: 'Billionaire boys fury boost shoes',
        oldcost: '250',
        cost: '200',
        image4: 'https://m.media-amazon.com/images/I/71FBobHZrNL._SY695_.jpg',
        image2: 'https://m.media-amazon.com/images/I/81FBHSthLGL._SX500_.jpg',
        image3: 'https://m.media-amazon.com/images/I/81be8kL4AjL._SX500_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/61uP-RiMIrL._SY575_.jpg',
        productModel: 'Classic',
        name: 'Club c coast shoes',
        oldcost: '60',
        cost: '40',
        image4: 'https://m.media-amazon.com/images/I/51lPZZRh05L._SY500_.jpg',
        image2: 'https://m.media-amazon.com/images/I/51Phf3GG6kL._SY500_.jpg',
        image3: 'https://m.media-amazon.com/images/I/61yTx28XA1L._SY500_.jpg'
    ),
  ];
///////////////////////////// accessories........
  List<Product> accessoriesData = [
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/28e7116674584c20826fabb300a9ccb7_9366/Face_Covers_M-L_3-Pack_Black_H18222_01_standard.jpg',
        productModel: 'LifeStyle',
        name: 'Face covers m/l 3-pack',
        oldcost: '40',
        cost: '20',
        image4: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/8f486b0278264d6598cbac56017bd0e9_9366/Face_Covers_3-Pack_M-L_White_HB7850.jpg',
        image2: 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/85e3b8b43f314661a942abca00920ade_9366/Face_Covers_3-Pack_M-L_Blue_H32391_21_model.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/4a50773223134978aa7babb300d03c15_9366/Face_Covers_M-L_3-Pack_Black_H18222_04_standard.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://i.pinimg.com/originals/aa/c0/5f/aac05f35fbbd0c0cb176c2953c25ee78.png',
        productModel: 'LifeStyle',
        name: 'Face covers xs/s 3 pack',
        oldcost: '40',
        cost: '20',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/28ad64fa0e624ae4807eabb300a9d51f_9366/Face_Covers_M-L_3-Pack_Black_H18222_03_standard_hover.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/5d966e8e90b3438a9041abb300aa019e_9366/Face_Covers_M-L_3-Pack_Black_H18222_02_standard.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/e6d4f7d53fdf4382bf04abb300aa371d_9366/Face_Covers_M-L_3-Pack_Black_H18222_14_standard.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/3403505cff9240428356ab22013b050f_9366/Low-Cut_Basic_Socks_Six_Pack_Multi_EW1846_01_standard.jpg',
        productModel: 'Men training',
        name: 'Low cut basic socks six pack',
        oldcost: '40',
        cost: '20',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/5375944b44884d0d8148ab22014141bf_9366/Delta_Low-Cut_Basic_Socks_Six_Pack_Multi_EW1849.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/f9d83abb292a44b285f3ab22013aa7be_9366/Delta_Low-Cut_Basic_Socks_Six_Pack_Multi_EW1849_01_standard.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/5c711deb98a4480d9dc3a6d6002075ea_9366/Classics_Lost_and_Found_Socks_White_BQ2224_01_standard.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/33311a78deca4628a115abc9008e8034_9366/Training_Weave_Backpack_Black_GD0696_01_standard.jpg',
        productModel: 'Training',
        name: 'Training weave backpack',
        oldcost: '200',
        cost: '150',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/1fc379faa6b0473e8516ac8a010031b5_9366/Training_Weave_Backpack_Black_GT7686_04_standard.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/44df69de09e24e5db910abc100f3f30a_9366/Training_Weave_Backpack_Yellow_GH0037_04_standard.jpg',
        image3: 'https://produkty.lionsport.cz/produkty_images/600/gh0099/gh0099.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/e21e6ce4dc0f43c89688ab45018a437e_9366/Classics_Fold-Over_Crew_Socks_3_Pairs_Black_GG6683_01_standard.jpg',
        productModel: 'Classic',
        name: 'Classics Fold-over crew socks 3 packs',
        oldcost: '30',
        cost: '15',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/fd3bfed25f844a3290b1ab460005826c_9366/Classics_Fold-Over_Crew_Socks_3_Pairs_Black_GG6683.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/e3b61214cede424e8f24ab45018a2d90_9366/Classics_Fold-Over_Crew_Socks_3_Pairs_Orange_GG6685_01_standard.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/321d0ba2df724de09b79ab2800e90cd1_9366/Classics_Crew_Socks_3_Pairs_White_FM9461_01_standard.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/ec37efac818e47f2b522ab61014bccb2_9366/Active_Enhanced_Convertible_Grip_Bag_Grey_GN4963_02_standard_hover.jpg',
        productModel: 'training',
        name: 'Enhanced Convertible Grip Bag',
        oldcost: '85',
        cost: '70',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/9d2ce122e3bd4b838e9dabc100ea51b9_9366/Active_Enhanced_Convertible_Grip_Bag_Orange_GH0112_04_standard.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/dd709bb49870430bb2dfab0500bf9e76_9366/Active_Enhanced_Grip_Bag_Black_FQ5368_04_standard.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto:sensitive,fl_lossy/d280d49fa0e8400da15ca9880020b2e0_9366/Active_Enhanced_Grip_Bag_Large_Black_DU2968_04_standard.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/06b2d8d277df4fccadbdac6800baf061_9366/One_Series_Bucket_Hat_Black_GP0122_01_standard.jpg',
        productModel: 'Training',
        name: 'One series bucket hat',
        oldcost: '45',
        cost: '30',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/726197720333461494ecac2c017387a9_9366/Classics_Foundation_Bucket_Hat_Black_GM5866_01_standard.jpg',
        image2: 'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/788d5e4380a7433ca072ac5b011d6e7e_9366/Classics_Summer_Retreat_Bucket_Hat_Orange_GN7731_01_standard.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/ab11bc0f91a64386b436ac5b011dfb35_9366/Classics_Summer_Retreat_Bucket_Hat_Black_GN7730.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/eb31ff6778fa42e89e57ac480039b8fd_9366/Classics_Archive_Backpack_Small_Black_GN7640.jpg',
        productModel: 'Classic',
        name: 'Classics archive backpack',
        oldcost: '70',
        cost: '54',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/4c3801f601b647279640aaca0105c7f1_9366/Classics_Archive_Backpack_Black_FL7045_04_standard.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/f509c6c223e947798d50ab3601497153_9366/Classics_Archive_Backpack_Black_GD1040_01_standard.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/53b4eac625434cffbfc1ab1400e1f2bc_9366/Classics_Archive_Backpack_White_FL7044_04_standard.jpg'
    ),
  ];

  ///////////////////////////// Trending........
  List<Product> trending = [
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/81wotFnXqLL._SX522_.jpg',
        productModel: 'Jacket',
        name: 'Utility field vest',
        oldcost:'80',
        cost: '65',
        image4: 'https://m.media-amazon.com/images/I/81btXaUzfAL._SX522_.jpg',
        image2: 'https://m.media-amazon.com/images/I/81xGkExHw-L._SX522_.jpg',
        image3: 'https://m.media-amazon.com/images/I/91soYecyu-L._SX522_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/81RaPRuTSiL._SY550_.jpg',
        productModel: 'Sweat-Shirts',
        name: 'Myt crew sweatshirt',
        oldcost: '50',
        cost: '40',
        image4: 'https://m.media-amazon.com/images/I/81FNE9-gNDL._SY550_.jpg',
        image2: 'https://m.media-amazon.com/images/I/61hCbiQexOL._SY550_.jpg',
        image3: 'https://m.media-amazon.com/images/I/71jStq0RAlL._SY550_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/61qK-LMwdqL._SY879_.jpg',
        productModel: 'T-shirt',
        name: 'Allen Iverson I3 3I Logo T-Shirt',
        oldcost: '40',
        cost: '30',
        image4: 'https://m.media-amazon.com/images/I/61sO9e1xB2L._SY741_.jpg',
        image2: 'https://m.media-amazon.com/images/I/61V113w5M5L._SY741_.jpg',
        image3: 'https://m.media-amazon.com/images/I/61+mNOFM3ZL._SY741_.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://m.media-amazon.com/images/I/41-6yRda71L._SX679_.jpg',
        productModel: 'Pants',
        name: 'knit track pants',
        oldcost: '70',
        cost: '55',
        image4: 'https://m.media-amazon.com/images/I/41dluSzdB0L._SX522_.jpg',
        image2: 'https://m.media-amazon.com/images/I/41JlFA0HYvL._SX522_.jpg',
        image3: 'https://m.media-amazon.com/images/I/41MZnptvI2L._SX522_.jpg'
    ),

    ];


  List<Product>get allProduct{
    return [...sigleProductData];
  }
  List<Product>get cloths{
    return [...colothsData];
  }
  List<Product>get shoes{
    return [...shoesData];
  }
  List<Product>get accessories {
    return [...accessoriesData];
  }



  // List<Product> _items=[
  //    Product(id: '1', name: 'T-shirt', description: 'It is a trending T-shirt', image: 'assets/shop.cloth1.jpg', cost: '50'),
  //   Product(id: '2', name: 'Shirt', description: 'It is a perfect Shirt', image: 'assets/shop.cloth2.jpg', cost: '40'),
  //   Product(id: '3', name: 'Jeans', description: 'Slim Fit jeans', image: 'assets/shop.cloth3.jpg', cost: '50'),
  //   Product(id: '4', name: 'Jeans', description: 'Fit jeans for mens', image: 'assets/shop.cloth4.jpg', cost: '50'),
  //   Product(id: '5', name: 'Tops', description: 'trending tops', image:'assets/shop.cloth5.jpg', cost: '50'),
  //   Product(id: '6', name: 'New Tops', description: 'trending cloths', image: 'assets/shop.cloth6.jpg', cost: '50'),
  //   Product(id: '7', name: 'cloth', description: 'trending', image: 'assets/shop.cloth7.jpg', cost: '50'),
  //   Product(id: '1', name: 'cloth', description: 'trending', image: 'assets/shop.cloth8.jpg', cost: '50')
  // ];
  // List<Product> _shoes=[
  //   Product(id: '1', name: 'shoes', description: 'It is a trending T-shirt', image: 'assets/shop.cloth1.jpg', cost: '50'),
  //   Product(id: '2', name: 'shoes', description: 'It is a perfect Shirt', image: 'assets/shop.cloth2.jpg', cost: '40'),
  //   Product(id: '3', name: 'shoes', description: 'Slim Fit jeans', image: 'assets/shop.cloth3.jpg', cost: '50'),
  //   Product(id: '4', name: 'shoes', description: 'Fit jeans for mens', image: 'assets/shop.cloth4.jpg', cost: '50'),
  //   Product(id: '5', name: 'shoes', description: 'trending tops', image:'assets/shop.cloth5.jpg', cost: '50'),
  //   Product(id: '6', name: 'shoes', description: 'trending cloths', image: 'assets/shop.cloth6.jpg', cost: '50'),
  //   Product(id: '7', name: 'shoes', description: 'trending', image: 'assets/shop.cloth7.jpg', cost: '50'),
  //   Product(id: '1', name: 'shoes', description: 'trending', image: 'assets/shop.cloth8.jpg', cost: '50')
  // ];
  // List<Product>get cloth{
  //   return [..._shoes];
  // }
  // List<Product>get items{
  //   return [..._items];
  // }
}
