import 'dart:html' as html;

import 'package:flutter/material.dart';
import '../components/constants.dart';

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Skills',
            style: TextStyle(color: KWhiter, fontSize: 36),
          ),
          SizedBox(height: 8),
          Container(
            height: 4,
            width: 120,
            color: KWhiter,
          ),
          SizedBox(height: 4),
          Container(
            height: 4,
            width: 80,
            color: KWhiter,
          ),
          SizedBox(height: 16),
          SkillCard(
            cardWidth: 800,
            cardHeight: 200,
            cardText: 'Mobile Development',
            hasButton: true,
            buttonText: 'My Projects',
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardContent(
                  text: 'Flutter',
                  child: FlutterLogo(
                    size: 36,
                  ),
                ),
                CardContent(
                  text: 'Kotlin',
                  child: Image.asset(
                    'assets/images/kotlin.png',
                    width: 36,
                    height: 36,
                  ),
                ),
                CardContent(
                  text: 'Java Android',
                  child: Icon(
                    Icons.android,
                    size: 36,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SkillCard(
                cardText: 'Agile Development',
                child: CardContent(
                  text: 'Scrum',
                ),
              ),
              SizedBox(width: 16),
              SkillCard(
                cardText: 'Database',
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                      text: 'PostgreSQL',
                      child: Image.asset(
                        'assets/images/postgresql.png',
                        width: 48,
                        height: 48,
                      ),
                    ),
                    CardContent(
                      text: 'Firebase',
                      child: Image.asset(
                        'assets/images/firebase.png',
                        width: 48,
                        height: 48,
                      ),
                    ),
                    CardContent(
                      text: 'MongoDB',
                      child: Image.asset(
                        'assets/images/mongodb.png',
                        width: 48,
                        height: 48,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SkillCard(
                cardText: 'Git',
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                      text: 'GitHub',
                      child: Image.asset(
                        'assets/images/github.png',
                        width: 56,
                        height: 56,
                      ),
                    ),
                    CardContent(
                      text: 'GitLab',
                      child: Image.asset(
                        'assets/images/gitlab.png',
                        width: 56,
                        height: 56,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16),
              SkillCard(
                cardText: 'Software Architecture',
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                      text: 'REST',
                    ),
                    CardContent(
                      text: 'MVC',
                    ),
                    CardContent(
                      text: 'MVVM',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SkillCard extends StatefulWidget {
  SkillCard({
    this.child,
    this.buttonText,
    this.cardHeight: 200,
    this.cardText,
    this.cardWidth: 394,
    this.hasButton: false,
  });

  double cardHeight;
  double cardWidth;
  bool hasButton;
  String cardText;
  String buttonText;
  Widget child;

  @override
  _SkillCardState createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool _hovering = false;
  bool _buttonHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (hover) {
        setState(() {
          _hovering = hover;
        });
      },
      onTap: () {
        //
      },
      child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        decoration: BoxDecoration(
            color: _hovering ? KWhite : KPurple,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Center(
          child: _hovering
              ? widget.hasButton
                  ? Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        widget.child,
                        widget.hasButton
                            ? InkWell(
                                onHover: (hover) {
                                  setState(() {
                                    _buttonHovering = hover;
                                  });
                                },
                                onTap: () {
                                  html.window.open(
                                      'https://github.com/gabrielPaim98',
                                      'GitHub');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: _buttonHovering
                                        ? Colors.transparent
                                        : KPurple,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: KPurple,
                                      style: BorderStyle.solid,
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16, horizontal: 32),
                                    child: Text(
                                      widget.buttonText,
                                      style: TextStyle(
                                          color: _buttonHovering
                                              ? KPurple
                                              : KWhiter,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                      ],
                    )
                  : widget.child
              : Text(
                  widget.cardText,
                  style: TextStyle(
                      color: KWhiter,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  CardContent({this.text, this.child});

  String text;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: child == null ? Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 24, color: KPurple, fontWeight: FontWeight.bold),
        ),
      ) :
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          child,
          SizedBox(
            height: 8,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 16, color: KPurple, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
