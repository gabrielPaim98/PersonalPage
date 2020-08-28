import 'package:flutter/material.dart';
import 'package:personallandingpage/components/constants.dart';
import 'package:personallandingpage/view/about_me.dart';
import 'package:personallandingpage/view/about_me_mobile.dart';
import 'package:personallandingpage/view/skills.dart';
import 'package:personallandingpage/view/skills_mobile.dart';
import 'package:personallandingpage/view/top_banner.dart';
import 'package:personallandingpage/view/top_banner_mobile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> buildChildren(BuildContext context){
    if(MediaQuery.of(context).size.width >= 1050){
      return [
        TopBanner(),
        SizedBox(height: 64),
        Skills(),
        SizedBox(height: 128),
        AboutMe(),
      ];
    } else {
      return [
        TopBannerMobile(),
        SizedBox(height: 32),
        SkillsMobile(),
        SizedBox(height: 64),
        AboutMeMobile(),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBlacker,
      body: SingleChildScrollView(
        child: Column(
          children: buildChildren(context),
        ),
      ),
    );
  }
}
