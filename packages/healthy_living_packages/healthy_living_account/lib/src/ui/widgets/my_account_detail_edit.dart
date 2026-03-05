import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_bloc.dart';
import 'package:healthy_living_account/src/ui/widgets/profile_details_tile.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MyAccountDetailEdit extends StatelessWidget {
  const MyAccountDetailEdit({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;
    final sharedLocalization = HealthyLivingSharedLocalizations.of(context)!;
    final bloc = context.read<MyAccountBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DSText(
                text: localization.account_myAccount_details,
                textStyle: DSTextStyleType.secondaryHeadingS,
                textColor: context.dsColors.textNeutralOnWhite,
              ),
              // KEY: TestKeys.editProfileButton
              InkWell(
                key: const Key('edit_profile_button'),
                onTap: () {
                  context.push(
                    AppRoutes.signUp.path,
                    extra: {
                      StringConstants.openedFrom: StringConstants.editProfile,
                    },
                  );
                },
                child: DSImage.asset(
                  DSIcons.icEdit,
                  width: context.dsSizes.sz500,
                  height: context.dsSizes.sz500,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: context.dsSpacing.sp400,
            vertical: context.dsSpacing.sp200,
          ),
          decoration: BoxDecoration(
            color: context.dsColors.surfaceNeutralContainerWhite,
            borderRadius: BorderRadius.circular(context.dsRadius.rd300),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              ProfileDetailsTile(
                title: sharedLocalization.general_name,
                value:
                    "${bloc.userDataModel?.firstName} ${bloc.userDataModel?.lastName}",
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
              ProfileDetailsTile(
                title: sharedLocalization.healthyLivingShared_signup_email,
                value: bloc.userDataModel?.email ?? "",
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
              ProfileDetailsTile(
                title: sharedLocalization.shared_countryPicker_country,
                value: _countryName(bloc.userDataModel, localization),
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
              ProfileDetailsTile(
                title: sharedLocalization.healthyLivingShared_signup_zipCode,
                value: _zipcode(bloc.userDataModel, localization),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _countryName(
    UserDataModel? userDataModel,
    HealthyLivingAccountLocalizations localization,
  ) {
    if (userDataModel != null && userDataModel.country.isValidValue) {
      return HealthyLivingSharedUtils.getCountryNameFromCode(
            userDataModel.country,
          ) ??
          localization.account_myAccount_notProvided;
    }

    return localization.account_myAccount_notProvided;
  }

  String _zipcode(
    UserDataModel? userDataModel,
    HealthyLivingAccountLocalizations localization,
  ) {
    if (userDataModel != null && userDataModel.zipCode.isValidValue) {
      return userDataModel.zipCode;
    }

    return localization.account_myAccount_notProvided;
  }
}
