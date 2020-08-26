import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/hero_image.dart';
import 'components/card_collection.dart';
import 'components/topic_card.dart';
import 'constants/words.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () => launch('https://github.com/matttodd'),
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () => launch('https://www.linkedin.com/in/matttodd6'),
          ),
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () => launch(
                'https://www.youtube.com/channel/UCWsZvTt1pHuqxEflozZUbQA'),
          ),
          IconButton(
            icon: Icon(Icons.assignment),
            onPressed: () => launch('files/resume.pdf'),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            HeroImage(
              image: AssetImage("images/intro_bg.jpg"),
              innerImage: AssetImage("images/self.jpg"),
              title: " Matthew Todd ",
              text: personalIntro,
            ),
            CardCollection(
              title: ' Work Experience ',
              cards: [
                TopicCard(
                  title: 'Three Village Central School District',
                  image: AssetImage("images/tvcsd.gif"),
                  text: tvcsdText,
                  color: Color(0xFF007550),
                  subtitle: 'June - September 2017',
                ),
                TopicCard(
                  title: 'Center for Nano-Wear, Yonsei University',
                  image: AssetImage("images/yonsei.png"),
                  text: yonseiText,
                  color: Color(0xFF013976),
                  subtitle: 'July - August 2018',
                ),
                TopicCard(
                  title: 'Cantella & Co.',
                  image: AssetImage("images/cantella.png"),
                  text: cantellaText,
                  color: Color(0xFFDFBF29),
                  subtitle: 'January - December 2019',
                ),
                TopicCard(
                  title: 'MORSE Corp',
                  image: AssetImage("images/morse.png"),
                  text: morseText,
                  color: Color(0xFF1C477B),
                  subtitle: 'January - August 2020',
                ),
              ],
            ),
            HeroImage(
              image: AssetImage("images/sanfran.jpg"),
            ),
            CardCollection(
              title: ' Competitions ',
              cards: [
                TopicCard(
                  title: 'NUWireless Hackathon: Kpop Machine Learning',
                  image: AssetImage("images/husky.jpg"),
                  text: wirelessText,
                  color: Color(0xFFE30000),
                  subtitle: 'March 2018',
                ),
                TopicCard(
                  title: 'HackMit: Counter Point',
                  image: AssetImage("images/mit.png"),
                  text: mitText,
                  color: Color(0xFF980000),
                  subtitle: 'September 2019',
                ),
                TopicCard(
                  title: 'Google CodeJam/KickStart',
                  image: AssetImage("images/codejam.jpg"),
                  text: codejamText,
                  color: Color(0xFFEA4335),
                  subtitle: '2018 - 2020',
                ),
              ],
            ),
            HeroImage(
              image: AssetImage("images/korea.jpg"),
            ),
            CardCollection(
              title: ' Other Projects ',
              cards: [
                TopicCard(
                  title: 'Focus Lights',
                  image: AssetImage("images/bulb.jpg"),
                  text: focusText,
                  color: Color(0xFFD151F3),
                ),
                TopicCard(
                  title: 'Discord Swear Jar',
                  image: AssetImage("images/discord.png"),
                  text: discordText,
                  color: Color(0xFF7289DA),
                ),
              ],
            ),
            HeroImage(
              image: AssetImage("images/golden_gate.jpg"),
            ),
            CardCollection(
              title: ' Hobbies ',
              cards: [
                TopicCard(
                  title: 'Obstacle Course Racing',
                  image: AssetImage("images/spartan.JPG"),
                  text: obstacleText,
                  color: Color(0xFF82BD40),
                ),
                TopicCard(
                  title: 'Bouldering',
                  image: AssetImage("images/climb.png"),
                  text: boulderText,
                  color: Color(0xFFFFC700),
                ),
                TopicCard(
                  title: 'Video Production',
                  image: AssetImage("images/film.jpg"),
                  text: filmText,
                  color: Color(0xFFB000FF),
                ),
                TopicCard(
                  title: 'Esports',
                  image: AssetImage("images/dota.jpg"),
                  text: esportText,
                  color: Color(0xFFEE3437),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
