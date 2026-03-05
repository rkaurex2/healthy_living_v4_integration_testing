import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_home/src/utils/home_screen_utils.dart';

class UserLoggedGreetingWidget extends StatelessWidget {
  final String userName;
  final bool isUserSubscribed;

  const UserLoggedGreetingWidget({
    required this.userName,
    this.isUserSubscribed = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final homeLocalizations = HealthyLivingHomeLocalizations.of(context)!;

    return Container(
      width: MediaQuery.of(context).size.width,
      color: context.dsColors.surfaceSemanticSuccessLight,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.dsSpacing.sp400,
          vertical: context.dsSpacing.sp300,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: DSText(
                text: HomeScreenUtils().getGreetingMessage(
                  homeLocalizations: homeLocalizations,
                  name: userName,
                ),
                textStyle: DSTextStyleType.primaryBodyMMedium,
                textColor: context.dsColors.textPrimaryDefault,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (isUserSubscribed) ...{DSPremiumBadge.orange()},
          ],
        ),
      ),
    );
  }
}
