import 'package:flutter/material.dart';
import 'package:personallandingpage/components/constants.dart';
import 'package:personallandingpage/view/about_me.dart';
import 'package:personallandingpage/view/skills.dart';
import 'package:personallandingpage/view/top_banner.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBlacker,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopBanner(),
            SizedBox(height: 64),
            Skills(),
            SizedBox(height: 128),
            AboutMe(),
          ],
        ),
      ),
    );
  }
}
