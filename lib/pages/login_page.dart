import 'package:finallyshop/bottomnav/cart.dart';
import 'package:finallyshop/pages/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool loading=false;
  final _formfield=GlobalKey<FormState>();
  final emailcontroller=TextEditingController();
  final password=TextEditingController();
  final _auth=FirebaseAuth.instance;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    password.dispose();
  }
void login(){
    setState(() {
      loading=true;
    });
    _auth.signInWithEmailAndPassword(email: emailcontroller.text, password: password.text.toString()).then((value){setState(() {
      loading=false ;
    });
      Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));
      utils().toastmess(value.user!.email.toString());}).onError((error, stackTrace) {setState(() {
      loading=false;
    });debugPrint(error.toString());utils().toastmess(error.toString());});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.orange.shade700,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formfield,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0,left: 7.0),
                  child: Column(

                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.orange,
                        controller: emailcontroller,
                        decoration: InputDecoration(
                            hintText: "Email",
                            helperText: "e.g. example@gmail.com",
                            icon: Icon(Icons.email,color: Colors.orange.shade700,)),
                        validator: (value){if(value!.isEmpty){return 'Enter email';}return null;},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        cursorColor: Colors.orange,
                        obscureText: true,
                        controller: password,
                        decoration: InputDecoration(
                            hintText: "Password",
                            helperText: "Name@123...",
                            icon: Icon(Bootstrap.key,color: Colors.orange.shade700,)),
                        validator: (value){if(value!.isEmpty){return 'Enter password';}return null;},
                      )
                    ],
                  ),
                )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.orange.shade700) ,

                  onPressed: (){
                            if(_formfield.currentState!.validate()){
                              login();
                            }
                  }

                  , child: Expanded(child: Container(height: 50,child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.login),SizedBox(width: 10,),Text("Login")],),),)),
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text("Don't have account?",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                  TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));}, child: Text("Sign Up"))
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
