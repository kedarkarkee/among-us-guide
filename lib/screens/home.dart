import 'package:flutter/material.dart';
import './widgets/card-item.dart';
import './widgets/drawer.dart';
import './widgets/rate.dart';
import '../data/guide-data.dart';
import '../utils/ad.dart';
import 'guide-view.dart';

class HomePage extends StatelessWidget {
  final guideData = GuideData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Among Us Guide and Tutorial'),
        actions: [
          IconButton(
            icon: Icon(Icons.star),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (ctx) {
                    return RateBar();
                  });
            },
          )
        ],
      ),
      drawer: drawer(context),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final guide = guideData.guides[index];
          return InkWell(
            child: CardItem(
              leading: Image.asset(
                guide.imageUrl,
                fit: BoxFit.fitHeight,
                width: 50,
                height: 40,
              ),
              title: guide.name,
            ),
            onTap: () {
              AdManager().loadInterAd();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return GuideView(
                    guide: guide,
                  );
                }),
              );
            },
          );
        },
        itemCount: guideData.guides.length,
      ),
    );
  }
}
