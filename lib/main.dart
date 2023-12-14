
import 'package:flutter/material.dart';
import 'package:signup/home.dart';
import 'package:signup/signup.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: signin());
  }
}

class signin extends StatefulWidget {
  signin({super.key});

  @override
  State<signin> createState() => signinState();
}

class signinState extends State<signin> {
  final un = TextEditingController();
  final pw = TextEditingController();
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home:Scaffold(body:
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=> home()));
              }, child: Text("Signin")),
              TextButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>signup()));
              }, child: Text("Signup"))
            ],),
        )
      ],),
    )
      ,)
    );
  }
}
