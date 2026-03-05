import 'dart:math';
import 'package:uuid/v4.dart';
import 'package:flutter/material.dart';

/// W3C Trace Context implementation for distributed tracing
class TraceContext {
  static const String requestContextPrefix = "appId=cid-v1:";
  static const String version = '00'; // W3C Trace Context version
  static const String traceFlags = '01';

  final String appInsightsAppId;
  final String traceId;
  final String spanId;

  TraceContext({required this.appInsightsAppId, String? traceId})
    : traceId = traceId ?? generateTraceId(),
      spanId = TraceContext.generateSpanId();

  /// Generate a 32-character hex trace ID
  static String generateTraceId() {
    return const UuidV4().generate().replaceAll('-', '');
  }

  /// Generate a 16-character hex span ID
  static String generateSpanId() {
    final random = Random.secure();
    final bytes = List<int>.generate(8, (i) => random.nextInt(256));
    return bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
  }

  /// Get the traceparent header value
  String get traceParentValue {
    return '$version-$traceId-$spanId-$traceFlags';
  }

  Map<String, String> getAppInsightsDistributedTracingHeaders() {
    try {
      return {
        'Request-Context': '$requestContextPrefix$appInsightsAppId',
        'Request-Id': '|$traceId.$spanId',
        'traceparent': traceParentValue,
      };
    } catch (ex, trace) {
      debugPrintStack(
        label: "Network::TraceContext error:${ex.toString()}",
        stackTrace: trace,
      );
      return {};
    }
  }
}
