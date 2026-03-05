import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_auth/src/resources/auth_icons.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({required this.onAnimationFinished, super.key});

  final VoidCallback onAnimationFinished;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _ewgLogoAnimationController;
  late AnimationController _byEwgTextAnimationController;

  late Animation<Offset> _ewgLogoSlideAnimation;
  late Animation<double> _byEwgTextFadeInAnimation;
  final Duration _ewgTopLogoAnimationDuration = const Duration(milliseconds: 300);
  final Duration _ewgTextAnimationDuration = const Duration(milliseconds: 200);
  final Duration _splashToHomeDelay = const Duration(seconds: 3);

  @override
  void initState() {
    super.initState();
    _setupAnimationControllers();
  }

  void _setupAnimationControllers() {
    _ewgLogoAnimationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _byEwgTextAnimationController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    _ewgLogoSlideAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _ewgLogoAnimationController,
        curve: Curves.easeOutCubic,
      ),
    );

    _byEwgTextFadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _byEwgTextAnimationController,
        curve: Curves.easeIn,
      ),
    );

    _startAnimation();
  }

  void _startAnimation() async {
    // Start EWG logo animation
    await Future.delayed(_ewgTopLogoAnimationDuration);
    await _ewgLogoAnimationController.forward();

    // Start text animation after logo
    await Future.delayed(_ewgTextAnimationDuration);
    await _byEwgTextAnimationController.forward();

    // Navigate to home after animation completes
    await Future.delayed(_splashToHomeDelay);
    widget.onAnimationFinished();
  }

  @override
  void dispose() {
    _byEwgTextAnimationController.dispose();
    _ewgLogoAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.05, 1.0],
            colors: [
              context.dsColors.surfaceBrandDefault,
              context.dsColors.surfacePrimaryDefault,
            ],
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 242,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                DSImage.asset(AuthIcons.icHealthyLivingTextOnlySplash),
                AnimatedBuilder(
                  animation: _byEwgTextAnimationController,
                  builder: (context, child) {
                    return Opacity(
                      opacity: _byEwgTextFadeInAnimation.value,
                      child: DSImage.asset(AuthIcons.icByEwgLogoSplash),
                    );
                  },
                ),
                Positioned(
                  top: -160,
                  child: AnimatedBuilder(
                    animation: _ewgLogoAnimationController,
                    builder: (context, child) {
                      return SlideTransition(
                        position: _ewgLogoSlideAnimation,
                        child: DSImage.asset(
                          width: 108,
                          height: 107,
                          fit: BoxFit.cover,
                          DSIcons.icEWGLogomark,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
