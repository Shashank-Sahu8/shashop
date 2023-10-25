import 'package:finallyshop/cart.dart';
import 'package:flutter/material.dart';
import 'package:finallyshop/home.dart';
import 'package:finallyshop/account.dart';
import 'package:finallyshop/categories.dart';
import 'package:finallyshop/deals.dart';
import 'package:finallyshop/list.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:finallyshop/Splash_Screen.dart';
int counter=0;
void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}


class thispage extends StatefulWidget {
  const thispage({super.key});

  @override
  State<thispage> createState() => _thispageState();
}

class _thispageState extends State<thispage> {
  int selitem=0;
  List pages=const[
    home(),
    categories(),
    deals(),
    cart(),
    account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:  BottomNavigationBar(

          type: BottomNavigationBarType.fixed,
          elevation:15,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Bootstrap.search_heart_fill),label: "Categories",),
            BottomNavigationBarItem(icon: Icon(Bootstrap.clock_fill),label: "Deals",),
            BottomNavigationBarItem(icon: Badge(child: Icon(Icons.shopping_cart),label: Text("$counter")),label: "Cart",),
            BottomNavigationBarItem(icon: Icon(Icons.person_2),label: "Account",),
          ],
          selectedFontSize: 12,
          unselectedFontSize: 12,
          showUnselectedLabels: true,
          unselectedItemColor: Color(0xff536878),
          selectedItemColor: Color(0xfffa8128),
          currentIndex: selitem,
          onTap: (setValue)
          {
            setState(() {
              selitem=setValue;
            });
          }
      ),
    body:pages[selitem],
    );
  }
}
