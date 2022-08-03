import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff010031),
        toolbarHeight: 0,
      ),
      backgroundColor: const Color(0xff010031),
      body: const WebView(
        zoomEnabled: true,
        initialUrl: "https://crm.codinga.me/admin/profile?notifications=true",
      ),
    );
  }
}
