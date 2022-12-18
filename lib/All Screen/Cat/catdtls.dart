import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Catdtls extends StatefulWidget {
  const Catdtls({super.key});

  @override
  State<Catdtls> createState() => _CatdtlsState();
}

class _CatdtlsState extends State<Catdtls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Image.asset("images/newarrivel1.jpg",fit: BoxFit.cover,),
                    
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
                Text("Lorem Ipsum is simply",style: TextStyle(fontSize: 20),),
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