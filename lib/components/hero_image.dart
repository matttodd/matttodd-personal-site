import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HeroImage extends StatelessWidget {
  final AssetImage image;
  final AssetImage innerImage;
  final String title;
  final String text;

  HeroImage({@required this.image, this.innerImage, this.title, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 56,
      decoration: BoxDecoration(
        image: DecorationImage(image: this.image, fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          this.generateTitle(),
          this.generateAvatar(),
          this.generateText(),
          Container(
            child: Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Icon(Icons.arrow_downward),
            ),
          )
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
//                  offset: Offset(2, 2),
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

  Widget generateAvatar() {
    if (this.innerImage != null) {
      return Padding(
        padding: EdgeInsets.only(left: 64, right: 64),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: CircleAvatar(
            radius: 205,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 200,
              backgroundImage: this.innerImage,
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget generateText() {
    if (this.text != null) {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Container(
            color: Colors.black.withOpacity(0.5),
            child: Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: AutoSizeText(
                this.text,
                textAlign: TextAlign.center,
                minFontSize: 0,
                maxFontSize: 72,
                style: TextStyle(
                  color: Colors.white,
//                    fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSansPro',
                  fontSize: 72,
                ),
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
