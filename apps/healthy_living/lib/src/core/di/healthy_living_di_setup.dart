import 'package:healthy_living/src/core/di/healthy_living_di_setup.config.dart';
import 'package:healthy_living_account/healthy_living_account.dart';
import 'package:healthy_living_auth/healthy_living_auth.dart';
import 'package:healthy_living_find/healthy_living_find.dart' show HealthyLivingFindPackageModule;
import 'package:healthy_living_home/healthy_living_home.dart';
import 'package:healthy_living_product_detail/healthy_living_product_detail.dart';
import 'package:healthy_living_my_items/healthy_living_my_items.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';
import 'package:storage/storage.dart';

/// Register all the micro package modules here of all the packages.
@InjectableInit(
  externalPackageModulesBefore: [
    ExternalModule(StoragePackageModule),
    ExternalModule(NetworkPackageModule),
    ExternalModule(HealthyLivingSharedPackageModule),
    ExternalModule(HealthyLivingAuthPackageModule),
    ExternalModule(HealthyLivingHomePackageModule),
    ExternalModule(HealthyLivingProductDetailPackageModule),
    ExternalModule(HealthyLivingMyItemsPackageModule),
    ExternalModule(HealthyLivingFindPackageModule),
    ExternalModule(HealthyLivingAccountPackageModule),
    ExternalModule(HealthyLivingScanPackageModule),
  ],
)
Future<void> initDependencyInjection() async {
  await injector.init();
}
