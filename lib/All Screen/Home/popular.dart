import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("popular_writer").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {

          if (snapshot.hasData) {

            return ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: snapshot.data!.docs.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child:   Column(
              children: [
                Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                   

                  ),
                  child: Image.network(snapshot.data!.docs[index]['image'],fit: BoxFit.cover,),

                ),
                Text(snapshot.data!.docs[index]['name']),
              ],
            ),
          ),
        ),
      );
            
          }
          else{ 
            
            return Container();
            
            }
        
      },) ) ;
  }
}



/*ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child:   Column(
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,

                  ),
                 child: Image.asset("images/William Shakespeare2.jpg",fit: BoxFit.cover,),
                ),
                Text("William Shakespeare"),
              ],
            ),
          ),
        ),
      ),*/