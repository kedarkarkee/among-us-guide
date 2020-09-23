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

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  double _bottomPadding = 0.0;
  BannerAd _bannerAd;
  AppLifecycleState _state = AppLifecycleState.resumed;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    setState(() {
      _state = state;
    });
  }

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: AdManager.appId);
    WidgetsBinding.instance.addObserver(this);
    _bannerAd = createBannerAd();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    AdManager().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Among Us Guide and Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      builder: (context, child) {
        if (_state == AppLifecycleState.resumed)
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
