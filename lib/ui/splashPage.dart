// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'HomePage.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
            (route) => false));
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.94,
          width: MediaQuery.of(context).size.width * 1,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/4.jpg"), fit: BoxFit.fill)),
          child: const Center(
              child: Text(
            'Assalom Alekum \n  \n   Xush Kelibsiz',
            style: TextStyle(fontSize: 30, color: Colors.white),
          )),
        ),
      ],
    )));
  }
}
