import 'package:flutter/material.dart';

class SearchBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  SearchBarDelegate({required this.child});

  @override
  double get minExtent => 0;
  @override
  double get maxExtent => 0;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  bool shouldRebuild(SearchBarDelegate oldDelegate) => false;
}
