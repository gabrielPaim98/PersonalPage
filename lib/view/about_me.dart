import 'package:flutter/material.dart';
import 'package:personallandingpage/components/social_media_card.dart';
import '../components/constants.dart';


class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: KWhiter,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/images/me.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 128),
              child: Column(
                mainAxisSize: MainAxisSize.max,
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
                  SizedBox(height: 32),
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
                      SocialMediaCard(imageAsset: 'assets/images/facebook.png', link: 'https://www.facebook.com/gabrielFp00/', name: 'facebook',),
                      SocialMediaCard(imageAsset: 'assets/images/email.png', link: 'mailto:gabriel.ferrarezi.paim@gmail.com', name: 'mail',),
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