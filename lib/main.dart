import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:post_api/Provider/home_provider.dart';
import 'package:post_api/View/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => HomeProvider(),)
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
      },
    ),
  ));
}
