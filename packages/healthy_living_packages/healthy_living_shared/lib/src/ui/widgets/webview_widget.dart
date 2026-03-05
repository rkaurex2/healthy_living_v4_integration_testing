import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:pdfrx/pdfrx.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewWidget extends StatefulWidget {
  final String url;

  const WebviewWidget({required this.url, super.key});

  @override
  State<WebviewWidget> createState() => _WebViewWidgetState();
}

class _WebViewWidgetState extends State<WebviewWidget> {
  late final WebViewController _controller;
  bool _isLoading = true;
  bool _showPdf = false;
  String _pdfUrl = '';
  Future<PdfDocument>? _pdfDocFuture;

  @override
  void initState() {
    super.initState();
    if (HealthyLivingSharedUtils.isPdfDoc(widget.url)) {
      _switchToPdf(widget.url);
      return;
    }
    _controller =
        WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setBackgroundColor(Colors.transparent)
          ..setNavigationDelegate(
            NavigationDelegate(
              onPageStarted:
                  (_) => mounted ? setState(() => _isLoading = true) : null,
              onPageFinished:
                  (_) => mounted ? setState(() => _isLoading = false) : null,

              onWebResourceError: (WebResourceError error) {
                DSToast.show(context: context, title: error.description);
                if (mounted) setState(() => _isLoading = false);
              },
              onNavigationRequest: (request) {
                final url = request.url;
                if (HealthyLivingSharedUtils.isPdfDoc(url)) {
                  _switchToPdf(url);
                  return NavigationDecision.prevent;
                }
                return NavigationDecision.navigate;
              },
            ),
          )
          ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    if (_showPdf) {
      return FutureBuilder<PdfDocument>(
        future: _pdfDocFuture,
        builder: (context, snapshot) {
          final loading =
              snapshot.connectionState != ConnectionState.done ||
              !snapshot.hasData;

          return Stack(
            children: [
              loading
                  ? const SizedBox.shrink()
                  : PdfViewer.uri(
                    Uri.parse(_pdfUrl),
                    params: PdfViewerParams(
                      backgroundColor: Colors.white,
                      margin: 0,
                      linkHandlerParams: PdfLinkHandlerParams(
                        onLinkTap: (link) {
                          if (link.url != null) {
                            launchUrl(link.url!);
                          }
                        },
                        enableAutoLinkDetection: false,
                        linkColor: Colors.transparent,
                      ),
                    ),
                  ),
              if (loading) ...const [
                ModalBarrier(dismissible: false, color: Colors.transparent),
                AppLoader(),
              ],
            ],
          );
        },
      );
    }
    return Stack(
      children: [
        ColoredBox(color: Colors.white),
        AbsorbPointer(
          absorbing: _isLoading,
          child: WebViewWidget(controller: _controller),
        ),
        if (_isLoading) ...[
          const ModalBarrier(dismissible: false, color: Colors.transparent),
          const AppLoader(),
        ],
      ],
    );
  }

  void _switchToPdf(String url) {
    _showPdf = true;
    _pdfUrl = url;
    _pdfDocFuture = PdfDocument.openUri(Uri.parse(_pdfUrl));
    setState(() {});
  }
}
