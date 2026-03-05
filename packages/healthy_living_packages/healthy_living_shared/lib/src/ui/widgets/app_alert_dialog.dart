import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final String? cancelText;
  final String confirmText;
  final VoidCallback? onCancel;
  final VoidCallback? onConfirm;
  final Color cancelColor;
  final Color confirmColor;
  final bool singleButton;

  const AppAlertDialog({
    required this.title,
    required this.content,
    super.key,
    this.cancelText,
    this.confirmText = 'OK',
    this.onCancel,
    this.onConfirm,
    this.cancelColor = const Color(0xFF2B2B2B),
    this.confirmColor = const Color(0xFF007AFF),
    this.singleButton = false,
  });

  @override
  Widget build(BuildContext context) {
    final dialog =
        Platform.isIOS ? _buildCupertino(context) : _buildMaterial(context);

    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop && onCancel != null) {
          onCancel!.call();
        }
      },
      child: dialog,
    );
  }

  Widget _buildCupertino(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: _buildActions(
        cancelBuilder:
            (child) => CupertinoDialogAction(
              onPressed: () {
                Navigator.pop(context, false);
                onCancel?.call();
              },
              child: child,
            ),
        confirmBuilder:
            (child) => CupertinoDialogAction(
              onPressed: () {
                Navigator.pop(context, true);
                onConfirm?.call();
              },
              isDefaultAction: true,
              child: child,
            ),
      ),
    );
  }

  Widget _buildMaterial(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: _buildActions(
        cancelBuilder:
            (child) => TextButton(
              onPressed: () {
                Navigator.pop(context, false);
                onCancel?.call();
              },
              child: child,
            ),
        confirmBuilder:
            (child) => TextButton(
              onPressed: () {
                Navigator.pop(context, true);
                onConfirm?.call();
              },
              child: child,
            ),
      ),
    );
  }

  List<Widget> _buildActions({
    required Widget Function(Text child) cancelBuilder,
    required Widget Function(Text child) confirmBuilder,
  }) {
    if (singleButton) {
      return [
        confirmBuilder(
          Text(confirmText, style: TextStyle(color: confirmColor)),
        ),
      ];
    }

    return [
      cancelBuilder(
        Text(cancelText ?? "Cancel", style: TextStyle(color: cancelColor)),
      ),
      confirmBuilder(Text(confirmText, style: TextStyle(color: confirmColor))),
    ];
  }

  static bool _isDialogShown = false;

  static Future<bool?> show(
    BuildContext context, {
    required String title,
    required String content,
    bool singleButton = false,
    String? cancelText,
    String confirmText = "OK",
    VoidCallback? onCancel,
    VoidCallback? onConfirm,
    Color cancelColor = const Color(0xFF2B2B2B),
    Color confirmColor = const Color(0xFF007AFF),
  }) async {
    if (_isDialogShown) return null;

    _isDialogShown = true;

    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder:
          (_) => AppAlertDialog(
            title: title,
            content: content,
            cancelText: cancelText,
            confirmText: confirmText,
            onCancel: onCancel,
            onConfirm: onConfirm,
            cancelColor: cancelColor,
            confirmColor: confirmColor,
            singleButton: singleButton,
          ),
    );

    _isDialogShown = false;
    return result;
  }
}
