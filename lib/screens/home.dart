import 'package:flutter/material.dart';
import '../data/guide-data.dart';
import './widgets/guide-view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final guideData = GuideData();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Among Us Guide'),
      ),
      body: GuideView(
        key: ObjectKey(_currentIndex),
        index: _currentIndex,
        guides: guideData.getGuide(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber,
        items: guideData.guides.map((guide) {
          return BottomNavigationBarItem(
            icon: Image.asset(
              guide.imageUrl,
              fit: BoxFit.fitHeight,
              width: 40,
              height: 30,
            ),
            title: Text(guide.name),
          );
        }).toList(),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
