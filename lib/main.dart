import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import './screens/screens.dart';
import './utils/ad.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _bottomPadding = 0.0;
  BannerAd _bannerAd;
  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: AdManager.appId);
    _bannerAd = createBannerAd();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Among Us Guide 2020',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      builder: (context, child) {
        _bannerAd
            .load()
            .then((value) => {
                  if (value) {_bannerAd.show()}
                })
            .catchError((err) {
          print(err);
        });
        return Padding(
          padding: EdgeInsets.only(
            bottom: _bottomPadding,
          ),
          child: child,
        );
      },
    );
  }

  BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: AdManager.bannerId,
      size: AdSize.banner,
      listener: (MobileAdEvent event) {
        if (event == MobileAdEvent.failedToLoad) {
          if (_bottomPadding != 0.0)
            setState(() {
              _bottomPadding = 0.0;
            });
        }
        if (event == MobileAdEvent.loaded) {
          if (_bottomPadding != 50.0)
            setState(() {
              _bottomPadding = 50.0;
            });
        }
      },
    );
  }
}
