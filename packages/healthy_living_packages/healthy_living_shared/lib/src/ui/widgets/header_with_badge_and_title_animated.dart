import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HeaderWithBadgeAndTitleAnimated extends StatelessWidget {
  final bool showCollapsedHeader;
  final String headerTitle;
  final Widget? leading;

  const HeaderWithBadgeAndTitleAnimated({
    required this.showCollapsedHeader,
    required this.headerTitle,
    super.key,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: true,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        child:
            showCollapsedHeader && headerTitle.isNotEmpty
                ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (leading != null) leading!,
                      if (leading != null)
                        SizedBox(width: context.dsSpacing.sp200),
                      Expanded(
                        child: DSText(
                          text: headerTitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textStyle: DSTextStyleType.primaryCaptionSemibold,
                          textColor: context.dsColors.textPrimaryDefault,
                        ),
                      ),
                    ],
                  ),
                )
                : const SizedBox.shrink(),
      ),
    );
  }
}
