
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 300,
      color: Colors.white,
      child: Column(
        children: [
          Text("Rating",style: TextStyle(fontSize: 20),),


          SizedBox(
            height: 20,
          ),
          Divider(
            indent: 1,
            endIndent: 1,
            color: Colors.grey,
            height: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.star,size: 40,color: Colors.amberAccent,),)

            ],
          ),
          
        ],
      ),
    );
  }
}
