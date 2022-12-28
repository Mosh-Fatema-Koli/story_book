import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_book/All%20Screen/Cat/comment.dart';
import 'package:story_book/All%20Screen/Cat/newarrivel.dart';
import 'package:story_book/All%20Screen/Cat/rating.dart';
import 'package:story_book/widget/customtextfield.dart';

class Catdtls extends StatelessWidget {

final DocumentSnapshot documentSnapshot;

 Catdtls({Key? key, required this.documentSnapshot}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {

          Get.back();
        },icon: Icon(Icons.arrow_back_ios,color: Colors.white,),),
        backgroundColor: Colors.blueAccent,

        elevation: 0,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 320,
              ),
              
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: 150,
                  color: Colors.blueAccent,
                  
              )),


               Positioned(
                top: 20,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                    width: 350,
                    height: 280,
                  

                    child: Image.network(documentSnapshot['image'],fit: BoxFit.cover,),
                    
              ),
                )),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Comments ",style: TextStyle(color: Colors.lightBlue),),
                    Text("0",style: TextStyle(color: Colors.amber),)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star,size: 12,color: Colors.amberAccent,),
                    Text(" 4/5 (2)")
                  ],
                ),
              ],
            ),
          ),

          
          Center(child: Text(documentSnapshot['name'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),),
           ),


          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
              height: 10,
            ),

                Text(documentSnapshot['description'],style: TextStyle(fontSize: 16,color: Colors.grey[800]),),
                SizedBox(
                  height: 10,
                ),


                CommentRatting()

              ],
            ),
          )
        ],
      ),
    );
  }
}