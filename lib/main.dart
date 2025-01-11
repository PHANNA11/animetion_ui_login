import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_app/animetion_ui.dart';
import 'package:mobile_app/camera_screen.dart';
import 'package:mobile_app/form_input.dart';
import 'package:mobile_app/home_page.dart';
import 'package:mobile_app/pages/profile_page_screen.dart';

import 'home_ui.dart';
import 'shop/profile/profile_screen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: ProfileScreen(),
      home: HomePageScreen(),
    );
  }
}
