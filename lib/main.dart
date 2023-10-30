import 'package:finallyshop/bottomnav/cart.dart';
import 'package:finallyshop/models/model.dart';
import 'package:finallyshop/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:finallyshop/bottomnav/home.dart';
import 'package:finallyshop/bottomnav/account.dart';
import 'package:finallyshop/bottomnav/categories.dart';
import 'package:finallyshop/bottomnav/deals.dart';
import 'package:finallyshop/list.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:finallyshop/pages/Splash_Screen.dart';
import 'package:provider/provider.dart';
import 'package:finallyshop/bottomnav/home.dart';
import 'package:firebase_core/firebase_core.dart';
int counter=0;
bool _switchValue=true;
void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Products())
      ],
      child: MaterialApp(
        //theme: _switchValue? ThemeData(brightness: Brightness.light,primarySwatch: Colors.blueGrey):ThemeData(brightness: Brightness.dark,primarySwatch: Colors.blueGrey),
        darkTheme: ThemeData(brightness: Brightness.dark,primarySwatch: Colors.blueGrey),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: Splash_Screen(),
      ),
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
    login(),
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



