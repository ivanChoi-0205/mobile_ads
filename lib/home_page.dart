
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mobile_ads/admob_service.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter AdMob"),
        elevation: 0,
      ),
      bottomNavigationBar: Container(
        height: 500,
        child: AdWidget(
          key: UniqueKey(),
          ad: AdsMobService.createBannerAd()..load(),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Text("Google AdMob"),
      ),
    );
  }
}

