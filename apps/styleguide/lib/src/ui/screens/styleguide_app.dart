import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:styleguide/l10n/styleguide_localizations.dart';
import 'package:healthy_living_shared/l10n/healthy_living_shared_localizations.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:styleguide/src/ui/screens/styleguide_app.directories.g.dart';

@widgetbook.App()
class StyleguideApp extends StatelessWidget {
  const StyleguideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appBuilder:
          (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: dsTheme,
            localizationsDelegates:
                StyleguideLocalizations.localizationsDelegates +
                DesignSystemLocalizations.localizationsDelegates +
                HealthyLivingSharedLocalizations.localizationsDelegates +
                HealthyLivingHomeLocalizations.localizationsDelegates +
                HealthyLivingFindLocalizations.localizationsDelegates,
            supportedLocales:
                <Locale>{
                  ...StyleguideLocalizations.supportedLocales,
                  ...HealthyLivingSharedLocalizations.supportedLocales,
                  ...HealthyLivingHomeLocalizations.supportedLocales,
                }.toList(),
            home: Material(child: child),
          ),
      directories: directories,
      addons: [
        DeviceFrameAddon(
          devices: [...Devices.android.all, ...Devices.ios.all],
          initialDevice: Devices.ios.iPhone13,
        ),
        TextScaleAddon(min: 1.0, max: 2.0),
        BuilderAddon(
          name: "default builder",
          builder: (context, child) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: Colors.white,
                body: Container(
                  color: context.dsColors.surfaceNeutralContainerWhite,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.dsSpacing.sp400,
                    ),
                    child: child,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
