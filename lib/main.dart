import 'package:flutter/material.dart';
import 'package:footballquotes/screens/Select_national_team.dart';
import 'package:footballquotes/screens/select_player.dart';
import 'package:footballquotes/screens/select_team.dart';
import 'package:footballquotes/screens/signin_page1.dart';
import 'package:footballquotes/screens/signin_page2.dart';
import 'package:footballquotes/screens/signup_screen.dart';
import 'package:footballquotes/screens/login_screen.dart';
import 'package:footballquotes/screens/title_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFF121212),
            fontFamily: 'Poppins',
            textTheme: TextTheme(
              bodyText2: TextStyle(color: Colors.white),
            )),
        home: SelectPlayer());
  }
}
