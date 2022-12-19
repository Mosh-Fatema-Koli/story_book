import 'package:get/get.dart';
import 'package:story_book/All%20Screen/Cat/cat.dart';
import 'package:story_book/All%20Screen/Cat/catdtls.dart';
import 'package:story_book/All%20Screen/Home/home.dart';
import 'package:story_book/All%20Screen/profile/profile.dart';
import 'package:story_book/Auth/login.dart';
import 'package:story_book/Auth/reg.dart';
import 'package:story_book/Auth/tree.dart';
import 'package:story_book/Route/splash.dart';

const String splash = '/splash-screen';
const String home = '/home-screen';
const String catagories = '/catagories-screen';
const String catagoriesdtls = '/catagoriesdtls-screen';
const String profile = '/profile-screen';
const String login = '/login-screen';
const String regForm = '/reg-screen';
const String widgettree = '/route-screen';


// control our page route flow

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => SplashPage(),
  ),
  GetPage(
    name: home,
    page: () => HomeScreen(),
  ),
  GetPage(
    name: catagories,
    page: () =>CatPage(),
  ),
  GetPage(
    name: catagoriesdtls,
    page: () => Catdtls(),
  ),
  GetPage(
    name: profile,
    page: () => Profile(),
  ),
  GetPage(
    name: login,
    page: () => LoginPage(),
  ),
  GetPage(
    name: regForm,
    page: () => RegPage(),
  ),
    GetPage(
    name: widgettree,
    page: () => WidgetTree(),
  ),
];