import 'package:flutter/material.dart';
import '../model/guide.dart';
import 'widgets/card-text.dart';

class GuideView extends StatelessWidget {
  const GuideView({Key key, this.guide}) : super(key: key);
  final Guide guide;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(guide.name),
      ),
      body: ListView.builder(
        itemCount: guide.contents.length,
        itemBuilder: (context, index) {
          final contents = guide.contents[index];
          return Column(
            children: [
              if (contents.title.isNotEmpty)
                CardText(
                  text: contents.title,
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              if (contents.text.isNotEmpty)
                CardText(
                  text: contents.text,
                  textStyle: TextStyle(
                    fontSize: 18,
                    height: 1.2,
                  ),
                ),
              if (contents.tip.isNotEmpty)
                CardText(
                  text: "Pro tip:\n" + contents.tip,
                  textStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                      color: Colors.deepPurpleAccent),
                ),
            ],
          );
        },
      ),
    );
  }
}
