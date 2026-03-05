import 'dart:async';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/camera_instruction_message_view.dart';

class CameraAutoHideInstructionMessageView extends StatefulWidget {
  final String message;
  final String icon;
  final Duration duration;

  const CameraAutoHideInstructionMessageView({
    required this.message,
    required this.icon,
    super.key,
    this.duration = const Duration(seconds: 5),
  });

  @override
  State<CameraAutoHideInstructionMessageView> createState() =>
      _CameraAutoHideInstructionMessageViewState();
}

class _CameraAutoHideInstructionMessageViewState
    extends State<CameraAutoHideInstructionMessageView> {
  bool _visible = true;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer(widget.duration, () {
      if (mounted) {
        setState(() => _visible = false);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_visible) return const SizedBox(height: 73);

    return CameraInstructionMessageView(
      message: widget.message,
      icon: widget.icon,
    );
  }
}