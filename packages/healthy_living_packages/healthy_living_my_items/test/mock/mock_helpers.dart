// Run in healthy_living_my_items root:
//   flutter pub run build_runner build --delete-conflicting-outputs

import 'package:mockito/annotations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_my_items/src/domain/respository/my_items_repository.dart';

@GenerateMocks([
  // BLoC dependencies for MyItemsBloc
  MyItemsRepository,
  CreateListAnalytics,

  // BLoC dependency for HistoryListBloc
  HistoryProductRepository,
])
void main() {}
