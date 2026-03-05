import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class AccountInfoCard extends StatelessWidget {
  final String name;
  final String email;

  const AccountInfoCard({required this.name, required this.email, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(AppRoutes.myAccountDetail.name);
      },
      child: Container(
        padding: EdgeInsets.all(context.dsSpacing.sp400),
        decoration: BoxDecoration(
          color: context.dsColors.surfaceNeutralBackgroundMedium,
          borderRadius: BorderRadius.circular(context.dsRadius.rd300),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DSImage.asset(
                      DSIcons.icUser,
                      height: context.dsSizes.sz500,
                      width: context.dsSizes.sz500,
                    ),
                    DSSpacingWidget.horizontal(
                      spacing: context.dsSpacing.sp200,
                    ),
                    DSText(
                      text: name,
                      textStyle: DSTextStyleType.primaryHeadingS,
                      textColor: context.dsColors.textNeutralOnWhite,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: context.dsSizes.sz500 + context.dsSpacing.sp200,
                  ),
                  child: DSText(
                    text: email,
                    textStyle: DSTextStyleType.primaryBodySRegular,
                    lineHeight: 1.5,
                    textColor: context.dsColors.textNeutralSecondary,
                  ),
                ),
              ],
            ),

            DSImage.asset(
              DSIcons.icChevronRight,
              height: context.dsSizes.sz400,
            ),
          ],
        ),
      ),
    );
  }
}
