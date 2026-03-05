import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/repository/universal_categories_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class BrowseCategoriesBloc
    extends Bloc<BrowseCategoriesEvent, BrowseCategoriesState> {
  final UniversalCategoriesRepository _repository;
  List<BrowseMainCategoryModel>? _personalCare;
  List<BrowseMainCategoryModel>? _cleaners;
  List<BrowseMainCategoryModel>? _food;
  List<BrowseMainCategoryModel>? _verifiedPersonalCare;
  List<BrowseMainCategoryModel>? _verifiedCleaners;
  List<BrowseMainCategoryModel>? _verifiedFood;

  final List<int> _compareListProducts = [];

  BrowseCategoriesBloc({required UniversalCategoriesRepository findRepository})
    : _repository = findRepository,
      super(const BrowseCategoriesState.browseCategoriesInitial()) {
    on<BrowseCategoriesInitialize>(_onInitialised);
  }

  List<BrowseMainCategoryModel>? get personalCare => _personalCare;

  List<BrowseMainCategoryModel>? get cleaners => _cleaners;

  List<BrowseMainCategoryModel>? get food => _food;

  List<int> get compareListProducts => _compareListProducts;

  List<BrowseMainCategoryModel>? get verifiedPersonalCare =>
      _verifiedPersonalCare;

  List<BrowseMainCategoryModel>? get verifiedCleaners => _verifiedCleaners;

  List<BrowseMainCategoryModel>? get verifiedFood => _verifiedFood;

  List<BrowseMainCategoryModel> get verifiedCategoriesForLogs => [
    if (verifiedPersonalCare.isValidList)
      verifiedPersonalCare!.first,
    if (verifiedCleaners.isValidList)
      verifiedCleaners!.first,
    if (verifiedFood.isValidList)
      verifiedFood!.first,
  ];

  List<BrowseMainCategoryModel>? get sortedVerifiedPersonalCare {
    if (_verifiedPersonalCare == null || _verifiedPersonalCare!.isEmpty) {
      return null;
    }
    return List<BrowseMainCategoryModel>.from(_verifiedPersonalCare!)..sort(
      (a, b) =>
          (a.name ?? '').toLowerCase().compareTo((b.name ?? '').toLowerCase()),
    );
  }

  List<BrowseMainCategoryModel>? get sortedVerifiedCleaners {
    if (_verifiedCleaners == null || _verifiedCleaners!.isEmpty) {
      return null;
    }
    return List<BrowseMainCategoryModel>.from(_verifiedCleaners!)..sort(
      (a, b) =>
          (a.name ?? '').toLowerCase().compareTo((b.name ?? '').toLowerCase()),
    );
  }

  bool get hasBrowseData =>
      _personalCare.isValidList &&
          _cleaners.isValidList &&
          _food.isValidList;


  List<BrowseMainCategoryModel> _sortByName(
    List<BrowseMainCategoryModel> list,
  ) {
    final sortableList = List<BrowseMainCategoryModel>.from(list);
    if (sortableList.isValidList) {
      return sortableList..sort(
        (a, b) => (a.name ?? '').toLowerCase().compareTo(
          (b.name ?? '').toLowerCase(),
        ),
      );
    }
    return [];
  }

  void _onInitialised(
    BrowseCategoriesInitialize event,
    Emitter<BrowseCategoriesState> emit,
  ) async {
    emit(const BrowseCategoriesState.browseCategoriesLoading());

    try {
      final response = await _repository.universalCategories(
        isEWGVerified: event.isEwgVerified,
      );

      if (response.isSuccess && response.data != null) {
        if (event.isEwgVerified) {
          _verifiedPersonalCare =
              response.data?.personalCare != null
                  ? _sortByName(response.data!.personalCare!)
                  : [];
          _verifiedCleaners =
              response.data?.cleaners != null
                  ? _sortByName(response.data!.cleaners!)
                  : [];
          _verifiedFood =
              response.data?.food != null
                  ? _sortByName(response.data!.food!)
                  : [];
        } else {
          _food =
              response.data?.food != null
                  ? _sortByName(response.data!.food!)
                  : [];
          _cleaners =
              response.data?.cleaners != null
                  ? _sortByName(response.data!.cleaners!)
                  : [];
          _personalCare =
              response.data?.personalCare != null
                  ? _sortByName(response.data!.personalCare!)
                  : [];
        }
        emit(BrowseCategoriesState.browseCategoriesSuccess());
      } else {
        emit(
          BrowseCategoriesFailure(
            UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(BrowseCategoriesState.browseCategoriesFailure(exception));
    }
  }
}
