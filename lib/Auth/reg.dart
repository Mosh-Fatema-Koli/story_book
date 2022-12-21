import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
 



 /* signUp() async{

    try {
          final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text,
          );
          addUserDtls(
            nameController.text,
            addressController.text,
            emailController.text,
            phoneNoController.text,
          );
          

          //user add
       
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            print('The password provided is too weak.');
          } else if (e.code == 'email-already-in-use') {
            print('The account already exists for that email.');
          }
        } catch (e) {
          print(e);
        }
  }*/

    signUp()async{
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
      );
        addUserDtls(
            nameController.text,
            addressController.text,
            emailController.text,
            phoneNoController.text,
          );
      var authCredential = userCredential.user;
      print(authCredential!.uid);
      if(authCredential.uid.isNotEmpty){
        Navigator.push(context, CupertinoPageRoute(builder: (_)=>LoginPage()));
      }
      else{
        Fluttertoast.showToast(msg: "Something is wrong");
      }

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(msg: "The password provided is too weak.");

      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(msg: "The account already exists for that email.");

      }
    } catch (e) {
      print(e);
    }
  }

  addUserDtls(String name, String address, String phoneNo,String email) async {

    await FirebaseFirestore.instance.collection("profile").add({
      "name":name,
      "address":address,
      "phone_no":phoneNo,
      "email":email
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(height: 600,
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
             "Sign Up",
             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
           ),
           SizedBox(
             height: 25,
           ),
            CustomTextField(
             
             controller: nameController,
             hintText: "Enter your name",
           ),
            CustomTextField(
             
             controller: addressController,
             hintText: "Enter your Address",
           ),
            CustomTextField(
             
             controller: phoneNoController,
             hintText: "Enter your phone no",
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
              signUp();
             },
             child: Text("Sign Up"),
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