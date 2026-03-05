import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductPaginationListview<T> extends StatefulWidget {
  final Future<void> Function(int page, int pageSize) fetchPage;
  final Widget Function(BuildContext, T, int) itemBuilder;
  final List<T> items;
  final int pageSize;
  final int page;
  final bool hasMore;
  final Widget? separator;
  final EdgeInsetsGeometry? padding;

  const ProductPaginationListview({
    required this.fetchPage,
    required this.itemBuilder,
    required this.items,
    required this.pageSize,
    required this.page,
    required this.hasMore,
    super.key,
    this.separator,
    this.padding,
  });

  @override
  State<ProductPaginationListview<T>> createState() =>
      _ProductPaginationListviewState<T>();
}

class _ProductPaginationListviewState<T>
    extends State<ProductPaginationListview<T>> {
  final ScrollController _scrollController = ScrollController();
  bool _hasMore = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    _hasMore = widget.hasMore;
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 200 &&
        _hasMore) {
      widget.fetchPage(widget.page, widget.pageSize);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: _scrollController,
      padding: widget.padding,
      itemCount: widget.items.length + (widget.hasMore ? 1 : 0),
      separatorBuilder:
          (_, __) => widget.separator ?? const SizedBox.shrink(),
      itemBuilder: (context, index) {
        if (index >= widget.items.length) {
          // Loader at the bottom
          return Padding(
            padding: EdgeInsets.only(bottom: context.dsSpacing.sp400),
            child: RoundedRectangleShimmerWidget(
              height: 112,
              width: double.infinity,
              borderRadius: DSRadius.rd200,
              baseColor: context.dsColors.surfaceNeutralContainer3,
              highlightColor: context.dsColors.surfaceNeutralContainer2,
            ),
          );
        }
        return widget.itemBuilder(context, widget.items[index], index);
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
