import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_book/All%20Screen/Home/catagories.dart';
import 'package:story_book/All%20Screen/Home/newarrivel.dart';
import 'package:story_book/All%20Screen/Home/popular.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
       
        children: <Widget>[
     
            /// Carousel FullScreen
          BannerCarousel.fullScreen(
            banners: BannerImages.listBanners,
            height: 200,
            animation: false,
            initialPage: 1,
            // OR pageController: PageController(initialPage: 6),
          ),

       
          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              maxLines: 1,
              minLines: 1,

              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  BorderSide(width: 3, color: Colors.blueAccent), //<-- SEE HERE
                  borderRadius: BorderRadius.circular(50.0),
                ),
                hintText: "Search",
                suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.search),)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 150,
              color: Colors.lightBlue,
              child: Image.asset("images/middle.jpg",fit: BoxFit.cover,),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Catagories",style: TextStyle(fontSize: 20),),
          ),


          Container(
              height: 150,
              child: CatagoriesScreen()),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Popular Writer",style: TextStyle(fontSize: 20),),
          ),
          Container(
              height: 250,
              child: PopularScreen()),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("New Arrivel",style: TextStyle(fontSize: 20),),
          ),
          Container(
            height: 500,
            child: NewArrivelScreen(),
          )


        ],
      ),
    );
  }
}

class BannerImages {
  static const String banner1 = "images/banner1.jpg";
  static const String banner2 =
      "images/banner2.jpg";
  static const String banner3 = "images/banner3.jpg";
  static const String banner4 =
      "images/banner4.jpg";

  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}