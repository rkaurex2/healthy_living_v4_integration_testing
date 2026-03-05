import 'package:freezed_annotation/freezed_annotation.dart';

part 'browse_categories_state.freezed.dart';

@freezed
class BrowseCategoriesState with _$BrowseCategoriesState {
  const factory BrowseCategoriesState.browseCategoriesInitial() =
      BrowseCategoriesInitial;

  const factory BrowseCategoriesState.browseCategoriesLoading() =
      BrowseCategoriesLoading;

  const factory BrowseCategoriesState.browseCategoriesSuccess() =
      BrowseCategoriesSuccess;

  const factory BrowseCategoriesState.browseCategoriesFailure(
    Exception exception,
  ) = BrowseCategoriesFailure;

  const factory BrowseCategoriesState.browseInternetFailure(
    Exception exception,
  ) = BrowseInternetFailure;
}
