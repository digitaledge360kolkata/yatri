import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../../helper/ad_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BannerAd? _bannerAd;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // BannerAd(
    //   adUnitId: AdHelper.bannerAdUnitId,
    //   request: AdRequest(),
    //   size: AdSize.banner,
    //   listener: BannerAdListener(
    //     onAdLoaded: (ad) {
    //       setState(() {
    //         _bannerAd = ad as BannerAd;
    //       });
    //     },
    //     onAdFailedToLoad: (ad, err) {
    //       print('Failed to load a banner ad: ${err.message}');
    //       ad.dispose();
    //     },
    //   ),
    // ).load();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Align(
          //   alignment: Alignment.topCenter,
          //   child: Container(
          //     width: _bannerAd!.size.width.toDouble(),
          //     height: _bannerAd!.size.height.toDouble(),
          //     child: AdWidget(ad: _bannerAd!),
          //   ),
          // ),
          const SizedBox(
            width: double.infinity,
            height: 100,
            child:   Placeholder(
              color: Colors.blue,
              child: Text('Ad goes here..'),
            ),
          ),

          Row(
            children: [
              Expanded(
                child: Image.asset('asset/images/flight.png'),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Image.asset('asset/images/train.png'),
              ),
            ],
          ),
          
          Row(
            children: [
              Expanded(
                child: Image.asset('asset/images/Bus.png'),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Image.asset('asset/images/Other.png'),
              ),
            ],
          ),
          const SizedBox(
            width: double.infinity,
            height: 100,
            child:   Placeholder(
              color: Colors.blue,
              child: Text('Ad goes here..'),
            ),
          ),
        ],
      ),
    );
  }
}
