import 'package:flutter/material.dart';
import 'package:personallandingpage/components/card_content.dart';
import 'package:personallandingpage/components/skill_card.dart';

class SkillsMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SkillCardMobile(
            title: 'Mobile Development',
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CardContentMobile(
                  child: FlutterLogo(size: 48),
                  title: 'Flutter',
                ),
                CardContentMobile(
                  title: 'Kotlin',
                  child: Image.asset(
                    'assets/images/kotlin.png',
                    width: 48,
                    //height: 36,
                  ),
                ),
                CardContentMobile(
                  title: 'Java Android',
                  child: Icon(
                    Icons.android,
                    size: 48,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          SkillCardMobile(
            title: 'Agile Development',
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CardContentMobile(
                  title: 'Scrum',
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          SkillCardMobile(
            title: 'Database',
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CardContentMobile(
                  title: 'PostgreSQL',
                  child: Image.asset(
                    'assets/images/postgresql.png',
                    width: 48,
                    height: 48,
                  ),
                ),
                CardContentMobile(
                  title: 'Firebase',
                  child: Image.asset(
                    'assets/images/firebase.png',
                    width: 48,
                    height: 48,
                  ),
                ),
                CardContentMobile(
                  title: 'MongoDB',
                  child: Image.asset(
                    'assets/images/mongodb.png',
                    width: 48,
                    height: 48,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          SkillCardMobile(
            title: 'Git',
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CardContentMobile(
                  title: 'GitHub',
                  child: Image.asset(
                    'assets/images/github.png',
                    width: 56,
                    height: 56,
                  ),
                ),
                CardContentMobile(
                  title: 'GitLab',
                  child: Image.asset(
                    'assets/images/gitlab.png',
                    width: 56,
                    height: 56,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          SkillCardMobile(
            title: 'Software Architecture',
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CardContentMobile(
                  title: 'REST',
                ),
                CardContentMobile(
                  title: 'MVC',
                ),
                CardContentMobile(
                  title: 'MVVM',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
