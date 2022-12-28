
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_book/All%20Screen/Cat/rating.dart';
import 'package:story_book/widget/customtextfield.dart';

class CommentRatting extends StatefulWidget {
  const CommentRatting({Key? key}) : super(key: key);

  @override
  State<CommentRatting> createState() => _CommentRattingState();
}

class _CommentRattingState extends State<CommentRatting> {


  TextEditingController commentcontroler =TextEditingController();
  bool _isVisible = false;

show() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          MaterialButton(onPressed: (){
            show();
          },child: Text("Comment",),color: Colors.amber,
            minWidth: MediaQuery.of(context).size.width, ),


          Visibility(
          visible: _isVisible,
            child:  Container(
          height: 200,

          width: MediaQuery.of(context).size.width,
          child: Column(
          children: [

          Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
          children: [
          CircleAvatar(),
          SizedBox(
          width: 10,
          ),
          Container(
          height: 50,
          width: 300,


          color: Colors.lightBlue,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text("hi"),
          ),
          )
          ],
          ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
          indent: 1,
    endIndent: 1,
    color: Colors.grey,
    height: 2,
    ),
            SizedBox(
              height: 10,
            ),
    Row(
    children: [
    Expanded(
    flex: 4,
    child: CustomTextField(
    controller: commentcontroler,
    hintText: "Write your comments",
    ),
    ),
    Expanded(
    flex: 1,
    child: GestureDetector(
    onTap: () {},
    child: Expanded(
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.only(
    topRight: Radius.circular(8),
    bottomRight: Radius.circular(8)),
    color: Colors.red),
    child: Padding(
    padding: const EdgeInsets.all(16),
    child: Text(
    "Send",
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 14),
    ),
    ),
    ),
    ),
    ),
    ),
    ],
    ),

    ],
    ),
    ),
            ),



          MaterialButton(onPressed: (){
            Get.to(showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    scrollable: true,
                    backgroundColor: Color.fromARGB(255, 253, 251, 251),
                    title: RatingPage(),
                  );
                }));
          },child: Text("Rating",),color: Colors.pink,
            minWidth: MediaQuery.of(context).size.width, )


        ],
      ),
    );
  }
}
