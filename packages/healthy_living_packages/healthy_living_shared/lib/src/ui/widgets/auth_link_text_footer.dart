import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AuthLinkTextFooter extends StatelessWidget {
  final String title;
  final String description;
  final bool isLogin;
  final VoidCallback onPressed;
  const AuthLinkTextFooter({
    required this.description,
    required this.title,
    required this.isLogin,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onPressed,
        child: DSText.rich(
          textSpan: TextSpan(
            text: title,
            style: DSTextStyleType.primaryBodySRegular.getTextStyle().copyWith(
              color: context.dsColors.textPrimaryDefault,
            ),
            children: [
              TextSpan(
                text: description,
                style: DSTextStyleType.primaryBodySRegular
                    .getTextStyle()
                    .copyWith(
                      color: context.dsColors.textPrimaryLink,
                      decoration: TextDecoration.underline,
                      decorationColor: context.dsColors.textPrimaryLink,
                    ),
              ),
            ],
          ),
          textStyle: DSTextStyleType.primaryBodySRegular,
          textColor: context.dsColors.textPrimaryDefault,
        ),
      ),
    );
  }
}
