

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.blueAccent,

        elevation: 0,      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Text("No Result Found",style: TextStyle(fontSize: 20,color: Colors.lightBlueAccent,fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
    );
  }
}
