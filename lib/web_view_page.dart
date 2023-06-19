
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key, required this.url});
  final String url;
  @override
  State<WebViewPage> createState() => _WebViewPageState(url: url);
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController controller;
  String url;
  final bool _isLoading = false;
  final String _title = '';
  _WebViewPageState({required this.url});
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(url),
      );
      
  }
  // final WebViewController controller = WebViewController()
  //   ..setNavigationDelegate(
  //     NavigationDelegate(
  //       onPageStarted: (String url){
  //         setState(() {
  //           _isLoading = true;
  //         });
  //       }
  //     )
  //   );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.clear),
        title: Column(
          children: [
            const Text('イベント詳細'),
            Text(widget.url,
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      ),
      body: _isLoading ? const LinearProgressIndicator() 
      : WebViewWidget(
        controller: controller,
      ),
    );
  }
}