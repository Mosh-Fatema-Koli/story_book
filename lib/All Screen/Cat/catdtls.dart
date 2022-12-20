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
                  color: Colors.amber,
                  
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
                    width: 100,
                    height: 100,
                  
                    color: Colors.red,
                    child: Image.network(documentSnapshot['image'],fit: BoxFit.cover,),
                    
              ),
                )),
            ],
          ),
          
          Center(child: Text("Adventure stories")),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
              height: 10,
            ),
                Text(documentSnapshot["name"],style: TextStyle(fontSize: 20),),
                 SizedBox(
              height: 10,
            ),
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
              ],
            ),
          )
        ],
      ),
    );
  }
}