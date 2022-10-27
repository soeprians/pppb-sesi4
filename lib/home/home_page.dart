import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latihan/ui/user/profile_page.dart';
import 'package:latihan/ui/widget/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const Center(
        child: Text(
          'Welcome to myApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: const Key('home'),
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            ),
          );
        },
        child: const Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
    );
  }
}
