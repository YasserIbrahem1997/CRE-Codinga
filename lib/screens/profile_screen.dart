import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int position = 1 ;
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff010031),
        toolbarHeight: 0,
      ),
      backgroundColor: const Color(0xff010031),
      body: IndexedStack(
          index:position ,
          children: <Widget>[
            WebView(
              zoomEnabled: true,
              initialUrl: "https://crm.codinga.me/admin/profile",             javascriptMode: JavascriptMode.unrestricted,
              onPageStarted: (value){setState(() {
                position = 1;
              });},
              onPageFinished: (value){setState(() {
                position = 0;
              });},
            ),
            Container(
              color: Color(0xff010031),
              child: Center(
                  child: CircularProgressIndicator(backgroundColor: Colors.grey,color: Colors.white,)),
            ),

          ])



    );
  }
}
