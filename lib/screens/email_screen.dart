import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
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
        initialUrl: "https://crm.codinga.me/admin/mailbox",
      ),
    );
  }
}
