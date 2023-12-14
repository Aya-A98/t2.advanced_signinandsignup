import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signup/main.dart';

import 'home.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final un = TextEditingController();
  final pw = TextEditingController();
  bool isvisible = true;
  bool isempty = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Container(color: Colors.white60,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [Padding(
          padding: const EdgeInsets.only(left:50,top:0,right:50,bottom:0),
          child: TextField(
            controller: un,
            decoration: InputDecoration(label: Text("username"),
                enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(20), )),
          ),
        ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:50,top:0,right:50,bottom:0),
            child: TextField(
              controller: pw,
              decoration: InputDecoration(
                  label: Text("password"),
                  enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(20) ),
                  suffixIcon: IconButton(icon: Icon(isvisible? Icons.visibility:Icons.visibility_off),
                    onPressed: (){
                      setState(() {
                        isvisible = !isvisible;
                      });
                    },)),
              obscureText: isvisible,
            ),
          ),
          SizedBox(height:20),
          Padding(
            padding: const EdgeInsets.only(left:50,top:0,right:50,bottom:0),
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){
                  if(un.text.isNotEmpty&&pw.text.isNotEmpty){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> home()));}
                  else{
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> AlertDialog(
                      title: Text("That's Require"),icon:Icon(Icons.error),
                    )));
                  }
                }, child: Text("Signin")),
                TextButton(onPressed: (){
                  un.clear();pw.clear();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>signin()));
                }, child: Text("Cancel"))
              ],),
          )
        ],),
    )
      ,);
  }
}
