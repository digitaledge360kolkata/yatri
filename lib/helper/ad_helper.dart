import 'dart:io';

class AdHelper {

  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2657559370937686~5866067946';
    }  else {
      throw UnsupportedError('Unsupported platform');
    }
  }


}