import 'package:flutter/material.dart';
import 'topic_card.dart';

class CardCollection extends StatelessWidget {
  final String title;
  final List<TopicCard> cards;

  CardCollection({@required this.title, @required this.cards});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height - 56),
      color: Colors.white,
      child: Column(
        children: [
          this.generateTitle(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Center(
                    child: Row(
                      children: this.cards,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget generateTitle() {
    if (this.title != null) {
      return Padding(
        padding: EdgeInsets.all(16),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            this.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'IndieFlower',
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 72,
              shadows: [
                Shadow(
                  blurRadius: 10,
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
