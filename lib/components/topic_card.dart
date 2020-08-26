import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TopicCard extends StatelessWidget {
  final String title;
  final AssetImage image;
  final String text;
  final Color color;
  final String subtitle;

  TopicCard(
      {@required this.title,
      this.image,
      this.text = "",
      this.color = Colors.red,
      this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: min(400, MediaQuery.of(context).size.width - 40),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: this.color,
              boxShadow: [BoxShadow(blurRadius: 8, offset: Offset(0, 4))]),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(.25),
                  ),
                  child: Center(
                    child: AutoSizeText(
                      this.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 48.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 64, right: 64),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: CircleAvatar(
                    radius: 105,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: this.image,
                    ),
                  ),
                ),
              ),
              generateSubtitle(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(.1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      child: AutoSizeText(
                        this.text,
                        textAlign: TextAlign.center,
                        minFontSize: 0,
                        maxFontSize: 72,
                        maxLines: 16,
                        style: TextStyle(
                          color: Colors.white,
//                    fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSansPro',
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget generateSubtitle() {
    if (this.subtitle != null) {
      return Padding(
        padding: EdgeInsets.all(4),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(.25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              this.subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 14.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
