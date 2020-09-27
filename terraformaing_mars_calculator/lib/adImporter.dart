import 'package:firebase_admob/firebase_admob.dart';

class AdImporter {
  static MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['flutter', 'firebase', 'admob'],
    testDevices: <String>[],
  );

  BannerAd bannerAd = BannerAd(
    adUnitId: BannerAd.testAdUnitId,
    size: AdSize.banner,
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("BannerAd event is $event");
    },
  );

  AdImporter() {
    /*
    FirebaseAdMob.instance.initialize(
        appId: 'addmob app id를 여기에 작성'); // Android Test App ID
    bannerAd
      ..load()
      ..show();
      */
  }
}
