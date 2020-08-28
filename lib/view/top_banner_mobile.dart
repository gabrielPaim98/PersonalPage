import 'package:flutter/material.dart';
import 'package:personallandingpage/components/constants.dart';

class TopBannerMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 400,
        maxHeight: 600
      ),
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/banner.png',
            fit: BoxFit.cover,
            height: 600,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            constraints: BoxConstraints(
                minHeight: 400,
                maxHeight: 600
            ),
            width: MediaQuery.of(context).size.width,
            color: Colors.black87.withOpacity(0.7),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Gabriel Ferrarezi Paim',
                    style: TextStyle(
                        color: KWhiter,
                        fontSize: 48
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Software Engineer Student',
                      style: TextStyle(
                          color: KWhiter,
                          fontSize: 32
                      ),
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Mobile Developer',
                    style: TextStyle(
                        color: KWhiter,
                        fontSize: 32
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}