import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdsMobService{
  String Android_banner = 'ca-app-pub-3940256099942544/6300978111';
  String Android_AdMob_app_ID = 'ca-app-pub-3940256099942544~3347511713';
  static String get bannerAdUnitId => Platform.isAndroid ? 'ca-app-pub-3940256099942544/6300978111' : 'ca-app-pub-3940256099942544/6300978111';

  static initialize(){
    if(MobileAds.instance == null){
      MobileAds.instance.initialize();
    }
  }
  static BannerAd createBannerAd(){
    BannerAd ad = new BannerAd(
        size: AdSize.largeBanner,
        adUnitId: bannerAdUnitId,
        listener: BannerAdListener(
          onAdClosed: (Ad ad) => print('On Ad Closed'),
          onAdFailedToLoad: (Ad ad, LoadAdError error){
            ad.dispose();
          },
          onAdOpened: (Ad ad) => print('On Ad Opened'),
          onAdLoaded: (Ad ad) => print('On Ad loaded'),
        ),
        request: AdRequest());
    return ad;
  }

}