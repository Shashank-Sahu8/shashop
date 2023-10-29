
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
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/a143c8a9b9df4d1fb8faaaf600c68fce_9366/Essentials_Linear_Pants_Grey_FM6805_21_model.jpg',
        productModel: 'Hoodies',
        name: 'Essentials Linear',
        oldcost: '80',
        cost: '60',
        image4: 'https://images-na.ssl-images-amazon.com/images/I/31nJjFCCZkL._AC_.jpg',
        image2: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/bb357021b59a4939926aa6a600c3d86f_9366/Essentials_Linear_Full_Zip_Hoodie_Black_S97076_21_model.jpg',
        image3: 'https://resources.mandmdirect.com/Images/_default/a/d/1/ad17572_2_cloudzoom.jpg'
    ),
    Product(
        description: 'this is new product',
        image:
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/8659b39db18f46b9b913ab8300a8619f_9366/Own_the_Run_Tee_Black_FS9799_21_model.jpg',
        productModel: 'T-Shirt',
        name: 'Own The Run Tee',
        oldcost: '60',
        cost: '40',
        image4: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/0af6bfc6c13f4bf98aedab8300a88df6_9366/Own_the_Run_Tee_Black_FS9799.jpg',
        image2: ' https://assets.adidas.com/images/w_600,f_auto,q_auto/cbb828b41d8e44d88cb7ab8300a87fe0_9366/Own_the_Run_Tee_Black_FS9799_23_hover_model.jpg',
        image3: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/769a7d0b7e7e4ddda6f2ab8300a87188_9366/Own_the_Run_Tee_Black_FS9799_22_model.jpg'
    ),

    Product(
        description: 'this is new product',
        image:
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/5ab31ab543704cb8a8d2a88700cfb627_9366/Ultimate365_Shorts_Grey_CE0447_21_model.jpg',
        productModel: 'Shorts',
        name: 'Ultimate 365',
        oldcost: '75',
        cost: '50',
        image4: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/04d68f347c284e0eab0aa8630173a44a_9366/Ultimate365_Shorts_Grey_CD9875.jpg',
        image2: 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/ac3e253fbd23450f95cfa8c1000d9ab5_9366/Ultimate365_Shorts_Grey_CE0448_21_model.jpg',
        image3: 'https://images.sportsdirect.com/images/products/36700402_l_a1.jpg'
    ),
    Product(
        description: 'this is new product',
        image:
        'https://assets.adidas.com/images/w_600,f_auto,q_auto/91b7dd603a0d4f178221a9b601126d2d_9366/POD-S3.1_Shoes_White_DB3537_01_standard.jpg',
        productModel: 'Sneakers',
        name: 'Pod-S 3.1',
        oldcost: '140',
        cost: '100',
        image4: 'https://www.efootwear.eu/media/catalog/product/cache/image/650x650//0/0/0000200860794_04_ek.jpg',
        image2: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/c8ed15f67e1f4921839ba9b60112b268_9366/POD-S3.1_Shoes_White_DB3537.jpg',
        image3: 'https://www.efootwear.eu/media/catalog/product/cache/image/650x650//0/0/0000200860794_03_ek.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/954fbe41c9b444859004ab260121a23f_9366/Floral_Track_Jacket_Black_GE0314_21_model.jpg',
        productModel: 'Jackets',
        name: 'Floral Track',
        oldcost: '140',
        cost: '99',
        image4: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/482aaea14d614549bbb9ab1a0115f306_9366/Floral_Track_Jacket_Black_GE0314_02_laydown.jpg',
        image2: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/7fdea46b36f542bbbe12ab260127b2cc_9366/Floral_Track_Jacket_Black_GE0314.jpg',
        image3: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/df298ef311c0490cb84eab260124bea5_9366/Floral_Track_Jacket_Black_GE0314_23_hover_model.jpg'
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNzlmQojw0tqNKQx7GBiQhFj18-rOg5weHhQ&usqp=CAU',
        productModel: 'Short',
        name: 'Textured epic shorts',
        oldcost: '50',
        cost: '44',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/cbfbdc0f93f04f7f8f79abea0149c1f5_9366/Textured_Epic_Shorts_Green_FU2863.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/2eec510c76a342098e06abea01447b90_9366/Textured_Epic_Shorts_Green_FU2863_01_standard.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/f0e92e197adf486f8c32abea01492aae_9366/Textured_Epic_Shorts_Green_FU2863_03_standard_hover.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/00990102d5174b06aca2aae7017ceef9_9366/Classics_Twin_Vector_Track_Jacket_Blue_FJ3172_04_standard.jpg',
        productModel: 'jacket',
        name: 'Classics vector track jacket',
        oldcost: '100',
        cost: '90',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/8b44edfc2f88468482d6aae7017aa580_9366/Classics_Twin_Vector_Track_Jacket_Blue_FJ3172_01_standard.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/c22808333d844df787d1aae7017a57ac_9366/Classics_Twin_Vector_Track_Jacket_Blue_FJ3172_03_standard_hover.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/38f6634ec24e4367a66faae7017c26c0_9366/Classics_Twin_Vector_Track_Jacket_Blue_FJ3172_07_detail.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/7dc9bc64b6d84c089840acf301607208_9366/Utility_Field_Vest_Black_GL3129_04_standard.jpg',
        productModel: 'Jacket',
        name: 'Utility field vest',
        oldcost:'80',
        cost: '65',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/f73d70d3e8c94d32bfd1ac8a00fb6f2f_9366/Utility_Field_Vest_Black_GL3129_07_detail.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/277cecec6e534308be1eac8a00fb67fd_9366/Utility_Field_Vest_Black_GL3129_06_detail.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/83c8780bd2534e4c9a76ac8a00fb754c_9366/Utility_Field_Vest_Black_GL3129_13_standard.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/6e42c7ea00624434ab52ac8a011fa449_9366/MYT_Crew_Sweatshirt_Green_GL3241.jpg',
        productModel: 'Sweat-Shirts',
        name: 'Myt crew sweatshirt',
        oldcost: '50',
        cost: '40',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/6294704fdcd3493db788ac8a011f7433_9366/MYT_Crew_Sweatshirt_Green_GL3241_01_standard.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/065d4a51189d46eaa5f6ac8400ff9e39_9366/Jersey_de_cuello_redondo_MYT_Verde_GL3241_13_standard.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/97e2a8cffc3d4803bc6bac8a01202834_9366/MYT_Crew_Sweatshirt_Green_GL3241_07_detail.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/35352504313e495788c5acf1002ce399_9366/Allen_Iverson_I3_3I_Logo_T-Shirt_Multi_EY0885.jpg',
        productModel: 'T-shirt',
        name: 'Allen Iverson I3 3I Logo T-Shirt',
        oldcost: '40',
        cost: '30',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/3705e28fc76c462abbecacf10033b39d_9366/Allen_Iverson_I3_3I_Logo_T-Shirt_Multi_EY0885_03_standard_hover.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/4a84ea20a9ec4b3b8864acf1002f6623_9366/Allen_Iverson_I3_3I_Logo_T-Shirt_Multi_EY0885_05_detail.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/27ea5cd9696f45b8968aacf1002bc8ce_9366/Allen_Iverson_I3_Dimensional_Logo_T-Shirt_Multi_EY0880_01_standard.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/ef80781d68a942d882edac6800a6c7b4_9366/Knit_Track_Pants_Black_GL3098_06_detail.jpg',
        productModel: 'Pants',
        name: 'knit track pants',
        oldcost: '70',
        cost: '55',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/e9a41b48d1744c628cb3ac6800a68675_9366/Knit_Track_Pants_Black_GL3098_01_standard.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/7810f8fd93bf48fbbde2ac6800a68d81_9366/Knit_Track_Pants_Black_GL3098_03_standard_hover.jpg',
        image3: 'https://media.handball-store.com/catalog/product/cache/image/573x/9df78eab33525d08d6e5fb8d27136e95/g/l/gl3098_app_virtual_standard_white.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/a076026521eb4b2f9688abc70154de4d_9366/Workout_Ready_Tech_Tee_Orange_FU3246_01_standard.jpg',
        productModel: 'Tank-tops',
        name: 'Workout_Ready_Tech_Tee_Orange',
        oldcost: '30',
        cost: '20',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/c0fad2f48f42411b83a1abc701513d73_9366/Workout_Ready_Tech_Tee_Orange_FU3246_03_standard_hover.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/10c0394a753b4173937dab3d00f85b58_9366/Workout_Ready_Tech_Tee_Orange_FU3246_13_standard.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/e49f6db542a348e1a4d9abc701563f30_9366/Workout_Ready_Tech_Tee_Orange_FU3246_06_detail.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/cd34290e1b57479399b3aae00137ab00_9366/Classics_Mesh_Tank_Top_White_FJ3179_01_standard.jpg',
        productModel: 'Tank-tops',
        name: 'Classics mesh tank top',
        oldcost: '40',
        cost: '34',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/c38c40a799344c459d8aaabf0091464b_9366/Classics_Mesh_Tank_Top_White_FJ3179_13_standard.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/d73cb08a533443118beaaae00139cf20_9366/Classics_Mesh_Tank_Top_White_FJ3179_03_standard_hover.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/af51c8a6349847c8ba7eaae001360973_9366/Classics_Mesh_Tank_Top_White_FJ3179.jpg'
    ),
  ];
////////////////////////////// shoes.............
  List<Product> shoesData = [
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/284a6dbadf75425fa1dbacfd00767fdd_9366/Nano_X1_Lux_Shoes_White_FZ1418_02_standard.jpg',
        productModel: 'Men Cross Training',
        name: 'Nano x1 lux',
        oldcost: '180',
        cost: '150',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/6170e458cd8c4482bbf0acfd007686f8_9366/Nano_X1_Lux_Shoes_White_FZ1418_04_standard.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/0a602c2ee13e4c17ae86acfd0076b6fb_9366/Nano_X1_Lux_Shoes_White_FZ1418_52_standard.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/0282a9bac41d4619bae1acfd007670cb_9366/Nano_X1_Lux_Shoes_White_FZ1418_03_standard.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/f090f5e4c0684862aa9bac67014a4762_9366/Classic_Leather_Legacy_Shoes_Blue_FY7557_01_standard.jpg',
        productModel: 'Classic',
        name: 'Classic leather legancy shoes',
        oldcost: '100',
        cost: '80',
        image4: 'https://media.endclothing.com/media/f_auto,w_600,h_600/prodmedia/media/catalog/product/0/9/09-03-2021_GH_FY7557_1_1.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/27c16fdb325c4bddb76fac67014906ca_9366/Classic_Leather_Legacy_Shoes_Blue_FY7557_04_standard.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/c56ae3bff21c4087a0e1acd900e8eb70_9366/Classic_Leather_Legacy_Shoes_Blue_FZ2905_03_standard.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/6d0688179e6d4f0aa19dab57017ca41d_9366/Reebok_Nano_X_Shoes_Blue_FW8473_01_standard.jpg',
        productModel: 'Men Cross training',
        name: 'Reebok nano x shoes',
        oldcost:'150',
        cost: '130',
        image4: 'https://bengarves.com/wp-content/uploads/2020/01/ef7298_flt_ecom.jpg',
        image2: 'https://i2.wp.com/bengarves.com/wp-content/uploads/2020/01/ef7298_blt_ecom.jpg',
        image3: 'https://i2.wp.com/bengarves.com/wp-content/uploads/2020/01/ef7298_tpp_ecom.jpg?resize=850%2C850&ssl=1'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/b2b8fca507664ffcbf82aaf8014cd06a_9366/Workout_Plus_Shoes_White_CN2126_01_standard.jpg',
        productModel: 'Classic',
        name: 'Workout plus shoes',
        oldcost: '100',
        cost: '80',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/93209502ef5c40c4963aaa7e00cd81cb_9366/Club_C_Revenge_Shoes_White_EG9243_52_standard.jpg',
        image2: 'https://www.footasylum.com/images/products/medium/118159_1.jpg',
        image3: 'https://media.sssports.com/630x630/media/catalog/product/4/0/4058027880255_1.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/00c9b5ad52b945088aa9ad030158f6c9_9366/Braindead_Zig_Kinetica_II_Shoes_White_S23891_01_standard.jpg',
        productModel: 'LifeStyle',
        name: 'Braindead zig kinetica ll shoes',
        oldcost: '180',
        cost: '160',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/8341dba27cb34217a0f3ad0301579032_9366/Braindead_Zig_Kinetica_II_Shoes_White_S23891_04_standard.jpg',
        image2: 'https://gcs.justfreshkicks.com/2021/03/e564fdfa-166083495_504084774305314_2289473542114589625_n.jpeg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/3f352376526e487bb4eead0301593516_9366/Braindead_Zig_Kinetica_II_Shoes_White_S23891_06_standard_hover.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/bd6dd335f4594505a76cab88016dba2c_9366/Club_C_Revenge_Shoes_White_FW7804_01_standard.jpg',
        productModel: 'Men Classic',
        name: 'Club c revenge shoes',
        oldcost: '80',
        cost: '74',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/dfb35cf9cde2490d9f06ab88016da4b4_9366/Club_C_Revenge_Shoes_White_FW7804_04_standard.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/43eef03c39fe4a0cb42aab88016ddc55_9366/Club_C_Revenge_Shoes_White_FW7804_52_standard.jpg',
        image3: 'https://sneakerstudio.it/data/gfx/pictures/medium/6/1/22916_1.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/7acf66da5f02449f94dcac70005d23f1_9366/Billionaire_Boys_Club_Instapump_Fury_BOOST_Shoes_Green_GZ5363_01_standard.jpg',
        productModel: 'Classic',
        name: 'Billionaire boys fury boost shoes',
        oldcost: '250',
        cost: '200',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/67ebc363781d4e65a881ac7000617a1f_9366/Billionaire_Boys_Club_Instapump_Fury_BOOST_Shoes_Green_GZ5363_06_standard_hover.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/7496a6fa3f4b4062b61bac700058b7e7_9366/Billionaire_Boys_Club_Instapump_Fury_BOOST_Shoes_Green_GZ5363_03_standard.jpg',
        image3: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/7de7ee400cac4fdba0a8ac70005a1d5b_9366/Billionaire_Boys_Club_Instapump_Fury_BOOST_Shoes_Green_GZ5363_41_detail.jpg'
    ),
    Product(description: 'this is new product',
        image:
        'https://assets.reebok.com/images/w_600,f_auto,q_auto/62bff960a63d4d98a7e6abc10008cd9e_9366/Club_C_Coast_Shoes_Black_FY5598_01_standard.jpg',
        productModel: 'Classic',
        name: 'Club c coast shoes',
        oldcost: '60',
        cost: '40',
        image4: 'https://assets.reebok.com/images/w_600,f_auto,q_auto:sensitive,fl_lossy/49d14812ba6649f78d75aaf8014ee392_9366/Workout_Plus_Shoes_Black_CN2127_03_standard.jpg',
        image2: 'https://assets.reebok.com/images/w_600,f_auto,q_auto/c046fcd8e3fe4e3e8714a84d00e3f545_9366/Workout_Plus_Black_CN2127_52_standard.jpg',
        image3: 'https://www.efootwear.eu/media/catalog/product/cache/image/650x650/0/0/0000200438870_03_ts.jpg'
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
    Product(
        description: 'this is new product',
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
    Product(
        description: 'this is new product',
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
    Product(
        description: 'this is new product',
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
    Product(
        description: 'this is new product',
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
