import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        onProgress: (){
          return Center(
            child: const CircularProgressIndicator(
              color: Color(0xff010031),
            ),
          )
        },
        initialUrl: "https://crm.codinga.me/admin/",
      )
    );
  }
}
