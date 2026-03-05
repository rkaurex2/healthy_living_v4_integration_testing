class WebviewScreenParams {
  final String title;
  final String url;

  const WebviewScreenParams({required this.title, required this.url});

  Map<String, String> toQueryParameters() => {'title': title, 'url': url};

  static WebviewScreenParams fromQueryParameters(Map<String, String> params) {
    return WebviewScreenParams(
      title: params["title"] ?? "",
      url: params["url"] ?? "",
    );
  }
}
