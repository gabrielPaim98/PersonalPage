import 'package:flutter/material.dart';
import 'constants.dart';
import 'dart:html' as html;

class SkillCard extends StatefulWidget {
  SkillCard({
    this.child,
    this.buttonText,
    this.cardHeight: 225,
    this.cardText,
    this.cardWidth: 494,
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

class SkillCardMobile extends StatefulWidget {
  SkillCardMobile({this.title, this.child});

  String title;
  Widget child;

  @override
  _SkillCardMobileState createState() => _SkillCardMobileState();
}

class _SkillCardMobileState extends State<SkillCardMobile> {
  bool showContent = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: InkWell(
        onTap: () {
          setState(() {
            showContent = showContent ? false : true;
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: KWhiter,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: KPurple,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(8),
                        bottom: showContent
                            ? Radius.circular(0)
                            : Radius.circular(8))),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                          color: KWhiter,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        showContent
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down,
                        color: KWhiter,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
              showContent
                  ? Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: widget.child,
              )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
