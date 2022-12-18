import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:story_book/All%20Screen/Cat/catdtls.dart';
import 'package:story_book/All%20Screen/Home/newarrivel.dart';

class CatPage extends StatefulWidget {
  const CatPage({super.key});

  @override
  State<CatPage> createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.all(15),
            child: Center(child: Text("All Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),)),
          ),
            Container(
            height: MediaQuery.of(context).size.height,
            child:  GestureDetector(
              onTap: () {
                Get.to(Catdtls());
              },
              
              child: NewArrivelScreen()),
          )

        ],
      ),
    );
  }
}