import 'package:flutter/material.dart';
import 'package:healthy_living_find/src/ui/widgets/browse_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomTabScreenPopScope(child: BrowseContentScreen());
  }
}
