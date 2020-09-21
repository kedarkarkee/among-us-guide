import 'package:flutter/material.dart';
import '../../model/guide.dart';
import '../../data/guide-data.dart';
import './card-text.dart';

class GuideView extends StatelessWidget {
  const GuideView({Key key, this.index, this.guides}) : super(key: key);
  final int index;
  final Guide guides;
  @override
  Widget build(BuildContext context) {
    final guideProvider = GuideData().getGuide(index);
    return ListView.builder(
      itemCount: guideProvider.contents.length,
      itemBuilder: (context, index) {
        final guide = guideProvider.contents[index];
        print(guideProvider);
        return Column(
          children: [
            if (guide.title.isNotEmpty)
              CardText(
                text: guide.title,
                textStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            if (guide.text.isNotEmpty)
              CardText(
                text: guide.text,
                textStyle: TextStyle(
                  fontSize: 18,
                  height: 1.2,
                ),
              ),
            if (guide.tip.isNotEmpty)
              CardText(
                text: "Pro tip:\n" + guide.tip,
                textStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    color: Colors.deepPurpleAccent),
              ),
          ],
        );
      },
    );
  }
}
