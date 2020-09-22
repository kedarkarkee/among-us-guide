import 'package:firebase_admob/firebase_admob.dart';

class AdManager {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>[
      'game',
      'mobile',
      'android',
      'strategy',
      'online',
      'multiplayer'
    ],
    contentUrl:
        'https://play.google.com/store/apps/details?id=com.innersloth.spacemafia',
    childDirected: true,
    nonPersonalizedAds: true,
  );
  static const String bannerId = 'ca-app-pub-2225720890839868/5899645087';
  static const String interId = 'ca-app-pub-2225720890839868/5708073396';
  static const String appId = 'ca-app-pub-2225720890839868~3465053439';
  static const List<String> nativeId = [
    'ca-app-pub-2225720890839868/6638011680',
    'ca-app-pub-2225720890839868/7569263053',
  ];
  InterstitialAd _interstitialAd;

  AdManager._internal();
  static final AdManager _adManager = AdManager._internal();
  factory AdManager() {
    return _adManager;
  }

  void loadInterAd() {
    _interstitialAd = createInterstitialAd()
      ..load()
      ..show();
  }

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
      adUnitId: interId,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        if (event == MobileAdEvent.closed) {
          _interstitialAd?.dispose();
        }
      },
    );
  }

  void dispose() {
    _interstitialAd?.dispose();
  }
}
