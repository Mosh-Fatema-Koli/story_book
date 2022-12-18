import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:story_book/Auth/login.dart';
import 'package:story_book/widget/customtextfield.dart';

class RegPage extends StatefulWidget {
  const RegPage({super.key});

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {

    TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(height: 400,
             width: 400,
             decoration: BoxDecoration(
                        color:Color.fromARGB(255, 1, 12, 75),
                        borderRadius: BorderRadius.circular(10)
             ),
          
               child: Padding(
                 padding: const EdgeInsets.all(15),
                 child: Column(
                   children: [
                     SizedBox(
             height: 35,
           ),
           Text(
             "Sign Up",
             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
           ),
           SizedBox(
             height: 25,
           ),
           CustomTextField(
             controller: emailController,
             hintText: "Enter your Email",
           ),
           CustomTextField(
             
             controller: passwordController,
             hintText: "Enter your password",
           ),
           SizedBox(
             height: 15,
           ),
           ElevatedButton(
             onPressed: () {
              
             },
             child: Text("Sign UP"),
           ),
           SizedBox(
             height: 5,
           ),
           Text("Or",style: TextStyle(color: Colors.white),),
           SizedBox(
             height: 5,
           ),
           InkWell(
             onTap: () {
               Get.to(LoginPage());
             },
             child: Text(
                 "Login",
                 style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white ),
             ),
           ),
                   ],
                 ),
               ),
               ),
      ),
    );
  }
}