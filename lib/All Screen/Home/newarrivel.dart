import 'package:flutter/material.dart';

class NewArrivelScreen extends StatelessWidget {
  const NewArrivelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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

  }
}
