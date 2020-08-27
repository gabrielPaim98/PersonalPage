import 'package:flutter/material.dart';
import 'package:personallandingpage/components/social_media_card.dart';
import '../components/constants.dart';
import 'dart:html' as html;


class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 750,
      color: KWhiter,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/images/me.jpg',
              fit: BoxFit.cover,
              height: 750,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 100),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                  SizedBox(height: 64),
                  Text(
                    'Education',
                    style: TextStyle(
                        color: KBlacker,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                  SizedBox(height: 16),
                  InkWell(
                    onTap: (){
                      html.window.open('https://www.ucsal.br', 'UCSal');
                    },
                    child: Row(
                      children: [
                        Text(
                          "Universidade Católica do Salvador",
                          style: TextStyle(color: KBlacker, fontSize: 24, fontWeight: FontWeight.bold,),
                        ),
                        SizedBox(width: 24),
                        Image.asset(
                          'assets/images/ucsal.png',
                          height: 64,
                        ),
                      ],
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
                  SizedBox(height: 64),
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SocialMediaCard(imageAsset: 'assets/images/whatsapp.png', link: 'https://wa.me/5571991642456', name: 'whatsapp',),
                      SocialMediaCard(imageAsset: 'assets/images/linkedin.png', link: 'https://www.linkedin.com/in/GabrielPaim', name: 'linkedIn',),
                      SocialMediaCard(imageAsset: 'assets/images/instagram.png', link: 'https://www.instagram.com/gpaimm/', name: 'instagram',),
                      SocialMediaCard(imageAsset: 'assets/images/email.png', link: 'mailto:g.paimm98@gmail.com', name: 'mail',),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}