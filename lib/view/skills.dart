import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/card_content.dart';
import '../components/skill_card.dart';

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
