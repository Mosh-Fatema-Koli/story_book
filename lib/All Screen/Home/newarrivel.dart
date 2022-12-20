import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_book/All%20Screen/Cat/catdtls.dart';

class NewArrivelScreen extends StatelessWidget {
  const NewArrivelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection("new_book_collection").snapshots(),
      builder: (context, snapshot) {

        if (snapshot.hasData) {

          return GridView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      itemCount: snapshot.data!.docs.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0
      ),
      itemBuilder: (BuildContext context, int index){

        final DocumentSnapshot documentSnapshot = snapshot.data!.docs[index];

        return Padding(
          padding: const EdgeInsets.all(15),
          child: GestureDetector(
            onTap: () {
              Get.to(Catdtls( documentSnapshot: documentSnapshot,));
            },
            child: Container(
              height: 200,
              color: Colors.amber,
             child: Column(
               children: [
                 Image.network(documentSnapshot['image'],fit: BoxFit.cover,),
                 Center(child: Text(documentSnapshot["name"])),
               ],
             ),
            ),
          ),
        );
      },
    );    
        }

    else{
      return Container();
    }
      
    },);

  }
}


/*
GridView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0
      ),
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 200,
            color: Colors.amber,
           child: Image.asset("images/newarrivel1.jpg",fit: BoxFit.cover,),
          ),
        );
      },
    );
new_book_collection*/