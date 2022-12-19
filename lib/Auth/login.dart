import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_book/Auth/reg.dart';
import 'package:story_book/widget/customtextfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  SignIN() async {

    try {
        final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height,
                  
                ),
              Positioned(
                 top: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: 300,
                  color: Colors.cyanAccent,
                ),
              ),
              Positioned(
                top: 100,
                right: 0,
                left: 0,
                
                child: Image.asset('images/logo.png',height: 80,width: 80,)),
             Positioned(
                top: 200,
                right: 0,
                left: 0,
            
              
              child: Center(
                child: Container(height: 400,
                width: 300,
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
                "Log In",
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
                 SignIN();
                },
                child: Text("Log In"),
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
                  Get.to(RegPage());
                },
                child: Text(
                    "Register",
                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white ),
                ),
              ),
                      ],
                    ),
                  ),
                  ),
              ))
            ],
          )
        ],

      ),
    );
  }
}