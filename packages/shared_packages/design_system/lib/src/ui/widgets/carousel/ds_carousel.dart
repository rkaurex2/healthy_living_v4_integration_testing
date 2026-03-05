import 'package:carousel_slider/carousel_slider.dart';
import 'package:design_system/design_system.dart';
import 'package:design_system/src/ui/widgets/carousel/ds_carousel_indicator.dart';
import 'package:flutter/material.dart';

class DSCarousel extends StatefulWidget {
  final List<Widget> slidesList;
  final bool isAutoPlay;
  final double height;
  final bool isIndicatorOverlap;
  final Color? indicatorBackgroundColor;
  final Color? activeIndicatorColor;
  final Color? inActiveIndicatorColor;
  final VoidCallback? onPageChangeComplete;
  final DSCarouselController? carouselController;

  const DSCarousel({
    required this.slidesList,
    this.height = 200,
    this.isAutoPlay = true,
    this.indicatorBackgroundColor,
    this.isIndicatorOverlap = false,
    this.activeIndicatorColor,
    this.inActiveIndicatorColor,
    this.carouselController,
    this.onPageChangeComplete,
    super.key,
  });

  @override
  State<DSCarousel> createState() => _DSCarouselState();
}

class _DSCarouselState<T> extends State<DSCarousel> {
  int selectedIndex = 0;
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();
    widget.carouselController?.bind(
      nextPage: ({Duration? duration, Curve? curve}) async {
        final next = selectedIndex + 1;
        if (_isAnimating) return;
        if (next < widget.slidesList.length) {
          _isAnimating = true;
          try {
            await Future.delayed(duration ?? Duration(milliseconds: 100));
            if (_carouselController.ready) {
              await _carouselController.nextPage(
                curve: curve ?? Curves.easeInOut,
              );
            }
          } catch (e) {
            debugPrint('Animation failed: $e');
          } finally {
            _isAnimating = false;
          }
        } else {
          widget.onPageChangeComplete?.call();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final carouselWidget = CarouselSlider(
      carouselController: _carouselController,
      options: CarouselOptions(
        height: widget.height,
        viewportFraction: 1.0,
        autoPlay: widget.isAutoPlay,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
        enableInfiniteScroll: false,
        onPageChanged: (index, reason) {
          if (mounted) {
            setState(() => selectedIndex = index);
          }
        },
      ),
      items: widget.slidesList,
    );

    final indicatorWidget = DSCarouselIndicator(
      slidesList: widget.slidesList,
      selectedIndex: selectedIndex,
      backgroundColor: widget.indicatorBackgroundColor,
      activeIndicatorColor: widget.activeIndicatorColor,
      inActiveIndicatorColor: widget.inActiveIndicatorColor,
    );

    return widget.isIndicatorOverlap
        ? Stack(
          alignment: Alignment.bottomCenter,
          children: [
            carouselWidget,
            if (widget.slidesList.length > 1) ...{
              Positioned(
                bottom: context.dsSpacing.sp300,
                child: indicatorWidget,
              ),
            },
          ],
        )
        : Column(
          children: [
            Expanded(child: carouselWidget),
            if (widget.slidesList.length > 1) ...{indicatorWidget},
          ],
        );
  }
}
