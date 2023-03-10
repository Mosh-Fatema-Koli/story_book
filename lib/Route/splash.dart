
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:story_book/All%20Screen/Home/home.dart';
import 'package:story_book/Auth/login.dart';
import 'package:story_book/Auth/tree.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () => Get.to(WidgetTree()));
    return Scaffold(
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
             

              child: Image.asset('images/logo.png',height: 100,width: 100,),
            ),
            Gap(50),
            Text(
              "Story Book",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            Gap(5),
            Text(
              "Powered By FK Ltd.",
              style: TextStyle(color: Colors.black, fontSize: 9),
            )
          ],
        ),
      ),
    );
  }
}