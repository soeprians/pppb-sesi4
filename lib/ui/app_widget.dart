import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latihan/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: null),
      home: const HomePage(),
    );
  }
}
