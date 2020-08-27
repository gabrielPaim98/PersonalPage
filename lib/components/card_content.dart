import 'package:flutter/material.dart';
import 'constants.dart';

class CardContent extends StatelessWidget {
  CardContent({this.text, this.child});

  String text;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: child == null
          ? Center(
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 24, color: KPurple, fontWeight: FontWeight.bold),
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                child,
                SizedBox(
                  height: 8,
                ),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 16,
                      color: KPurple,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
    );
  }
}

class CardContentMobile extends StatelessWidget {
  CardContentMobile({this.child, this.title});

  String title;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          child??Container(),
          SizedBox(
            width: 16,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 24, color: KBlacker),
          ),
        ],
      ),
    );
  }
}