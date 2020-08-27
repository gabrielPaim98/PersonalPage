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
