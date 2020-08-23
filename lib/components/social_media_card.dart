import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'constants.dart';

class SocialMediaCard extends StatefulWidget {
  SocialMediaCard({
    this.link,
    this.name,
    this.imageAsset,
  });

  String link, name, imageAsset;

  @override
  _SocialMediaCardState createState() => _SocialMediaCardState();
}

class _SocialMediaCardState extends State<SocialMediaCard> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.open(widget.link, widget.name);
      },
      onHover: (hover) {
        setState(() {
          _hovering = hover;
        });
      },
      child: CircleAvatar(
        backgroundColor: _hovering ? KPurple : KWhiter,
        child: Image.asset(
          widget.imageAsset,
          color: _hovering ? KWhiter : KPurple,
        ),
        radius: 40,
      ),
    );
  }
}
