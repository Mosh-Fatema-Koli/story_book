import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:story_book/All%20Screen/profile/edit_profile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  signOut() async {
    await FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [

              SizedBox(
                height: 20,
              ),
              Text("Profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10,
              ),
                Container(
                  height: 150,
                  width: 150,
               
                  child: Image.asset("images/profile.png"),
                ),
              SizedBox(
                height: 20,
              ),
              Card(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 250,
                    child: Column(
                      children: [
                        Text("Name:"),
                        SizedBox(
                          width: 25,
                        ),
                        Text(""),]

          ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
    Card(
       color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
           width: 250,
          child: Column(
          children: [
          Text("Address:"),
   Text(" ",textAlign: TextAlign.center,),

   
          ],
          ),
        ),
      ),
    ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    width: 250,
                    child: Column(
                      children: [
                        Text("Phone No:"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(""),
                      ],
                    ),
                  ),
                ),
              ),

               SizedBox(
                height: 10,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  MaterialButton(onPressed: (){
                            
                            Get.to(EditProfile());

                  },
                  child: Text("Edit"),
                  color: Colors.green,
                  
                  ),
                  SizedBox(width: 10,),

                  MaterialButton(onPressed: (){
                   signOut();
                  },
                  child: Text("Logout"),
                  color: Colors.red,
                  
                  )

                ],
              )

]),
        ),
      ),

    );
  }
}
