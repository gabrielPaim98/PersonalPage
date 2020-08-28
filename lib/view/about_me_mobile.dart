import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personallandingpage/components/social_media_card.dart';
import '../components/constants.dart';
import 'dart:html' as html;

class AboutMeMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: KWhiter,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 16),
            CircleAvatar(
              radius: MediaQuery.of(context).size.width*0.15,
              backgroundImage: AssetImage('assets/images/me.jpg'),
            ),
            SizedBox(height: 8),
            Text(
              'About Me',
              style: TextStyle(
                  color: KBlacker,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            SizedBox(height: 16),
            Text(
              "Developer with affinity in mobile development. Bachelor scholarship student of Software Engineering. I love to learn new things and put them to practice, especially those whose make the world better!",
              style: TextStyle(color: KBlacker, fontSize: 24),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              'Education',
              style: TextStyle(
                  color: KBlacker,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: (){
                  html.window.open('https://www.ucsal.br', 'UCSal');
                },
                child: Text(
                  "Universidade Católica do Salvador",
                  style: TextStyle(color: KBlacker, fontSize: 24, fontWeight: FontWeight.bold,),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Bachelor of Software Engineering",
                style: TextStyle(color: KBlacker, fontSize: 24, fontWeight: FontWeight.w500,),
                textAlign: TextAlign.justify,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Full scholarship student\nAttending from Aug. 2018 to present",
                style: TextStyle(color: KBlacker, fontSize: 24,),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Contact Me',
              style: TextStyle(
                  color: KBlacker,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SocialMediaCard(imageAsset: 'assets/images/whatsapp.png', link: 'https://wa.me/5571991642456', name: 'whatsapp', radius: 30),
                SocialMediaCard(imageAsset: 'assets/images/linkedin.png', link: 'https://www.linkedin.com/in/GabrielPaim', name: 'linkedIn',radius: 30),
                SocialMediaCard(imageAsset: 'assets/images/instagram.png', link: 'https://www.instagram.com/gpaimm/', name: 'instagram', radius: 30),
                SocialMediaCard(imageAsset: 'assets/images/email.png', link: 'mailto:g.paimm98@gmail.com', name: 'mail',radius: 30,),
              ],
            ),
            SizedBox(height: 16),
          ],
        ),
    );
  }
}
