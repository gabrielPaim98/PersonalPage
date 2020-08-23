import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personallandingpage/components/constants.dart';

class TopBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 800,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/banner.png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: 800,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 800,
            color: Colors.black87.withOpacity(0.7),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Spacer(flex: 1),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gabriel Ferrarezi Paim',
                    style: TextStyle(
                      color: KWhiter,
                      fontSize: 56
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      'Software Engineer Student',
                      style: TextStyle(
                          color: KWhiter,
                          fontSize: 36
                      ),
                    ),
                  ),
                  Text(
                    'Mobile Developer',
                    style: TextStyle(
                        color: KWhiter,
                        fontSize: 36
                    ),
                  ),
                ],
              ),
              Spacer(flex: 4),
            ],
          ),
        ],
      ),
    );
  }
}
