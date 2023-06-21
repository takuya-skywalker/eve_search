
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key, required this.rssUrl}) : super(key: key);
  final String rssUrl;
  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController _controller;
  bool _isLoading = false;
  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            setState(() {
              _isLoading = true;
            });
          },
          onPageFinished: (String url) {
            setState(() {
              _isLoading = false;
            });
          },
        ),
    )
    ..loadRequest(Uri.parse(widget.rssUrl));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: (){ Navigator.pop(context);} ,
          icon: const Icon(Icons.clear)
        ),
        title: const Text('イベント詳細'),
        actions: [
          IconButton(
            onPressed: () async {
              _controller.goBack();
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          IconButton(
            onPressed: () async {
              _controller.goForward();
            },
            icon: const Icon(
              Icons.arrow_forward,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          if (_isLoading) const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: CircularProgressIndicator(),
            ),
          ),
          Expanded(child: WebViewWidget(controller: _controller)),
        ],
      ),
    );
  }
}