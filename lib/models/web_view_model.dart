import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewModel extends StatefulWidget {
  const WebViewModel({
    required this.url,
    super.key,
  });

  final String url;
  @override
  State<WebViewModel> createState() => _WebViewModelState();
}

class _WebViewModelState extends State<WebViewModel> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
