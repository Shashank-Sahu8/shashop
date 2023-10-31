import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:finallyshop/pages/login_page.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool loading=false;
  final _formfield=GlobalKey<FormState>();
  final emailcontroller=TextEditingController();
  final password=TextEditingController();

  FirebaseAuth _auth=FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Sign up"),
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
                          setState(() {
                            loading=true;
                          });
                            _auth.createUserWithEmailAndPassword(
                                email: emailcontroller.text.toString(),
                                password: password.text.toString()).then((value){
                              setState(() {
                                loading=false ;
                              });
                            }).onError((error, stackTrace) { utils().toastmess(error.toString());
                              setState(() {
                              loading=false;
                              });});
                        }
                      }

                      , child: Expanded(child: Container(height: 50,child: loading?CircularProgressIndicator(color: Colors.white,):Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.login),SizedBox(width: 10,),Text("Sign up")],),),)),
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Text("Already have account?",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                      TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));}, child: Text("Login"))
                    ],
                  ),
                ),

              ],
            ),
          ),



    );
  }
}


class utils{

   toastmess(String message)
  {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey[700],
        textColor: Colors.orange,
        fontSize: 16.0
    );
  }

}