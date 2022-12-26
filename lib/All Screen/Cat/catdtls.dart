import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_book/All%20Screen/Home/newarrivel.dart';

class Catdtls extends StatelessWidget {

final DocumentSnapshot documentSnapshot;

  const Catdtls({Key? key, required this.documentSnapshot}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
              ),
              
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: 100,
                  color: Colors.blueAccent,
                  
              )),

              Positioned(
                top: 10,
                left: 10,
                
                
                child:IconButton(onPressed: () {

                  Get.back();
                },icon: Icon(Icons.arrow_back_ios,color: Colors.white,),)),

               Positioned(
                top: 30,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                    width: 150,
                    height: 150,
                  

                    child: Image.network(documentSnapshot['image'],fit: BoxFit.cover,),
                    
              ),
                )),
            ],
          ),
          
          Center(child: Text("Adventure")),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
              height: 10,
            ),
                Text(documentSnapshot['name'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
                 SizedBox(
              height: 10,
            ),
                Text(documentSnapshot['description'],style: TextStyle(fontSize: 16,color: Colors.grey[800]),)
              ],
            ),
          )
        ],
      ),
    );
  }
}