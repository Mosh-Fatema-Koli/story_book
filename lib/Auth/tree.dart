
import 'package:flutter/material.dart';
import 'package:story_book/Auth/auth.dart';
import 'package:story_book/Auth/login.dart';
import 'package:story_book/Route/nav.dart';


class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NavScreen();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
