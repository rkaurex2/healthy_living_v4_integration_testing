import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_my_items/src/ui/bloc/history/history_list_event.dart';
import 'package:healthy_living_my_items/src/ui/bloc/history/history_list_state.dart';
import 'package:healthy_living_my_items/src/ui/model/history_sort_option.dart';
import 'package:healthy_living_my_items/src/utils/my_items_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class HistoryListBloc extends Bloc<HistoryListEvent, HistoryListState> {
  final HistoryProductRepository _repository;

  HistoryListBloc({required HistoryProductRepository repository})
    : _repository = repository,
      _sortOptions = MyItemsUtils().getHistorySortOptions(),
      _selectedSortOption = MyItemsUtils().getDefaultHistorySortOption(),
      super(const HistoryListState.initial()) {
    on<HistoryListInitialized>(_onInitialized);
    on<HistoryListFetched>(_onHistoryListFetched);
    on<HistoryListSortChanged>(_onHistoryListSortChanged);
  }

  int _page = 1;
  final _perPage = IntegerConstants.defaultProductsPerPage;
  bool _isFetchingList = false;
  bool _hasReachedMaxItems = false;
  GetHistoryResponseModel? _historyData;
  List<HistoryItemModel> _historyItems = [];
  int selectedSortIndex = 0;

  int get page => _page;

  bool get isFetchingList => _isFetchingList;

  bool get hasReachedMaxItems => _hasReachedMaxItems;

  GetHistoryResponseModel? get historyData => _historyData;

  List<HistoryItemModel> get historyItems => _historyItems;

  late List<HistorySortOption> _sortOptions;

  List<HistorySortOption> get sortOptions => _sortOptions;
  late HistorySortOption _selectedSortOption;

  HistorySortOption get selectedSortOption => _selectedSortOption;
  int _currentFindingsTab = 0;

  int get currentFindingsTab => _currentFindingsTab;

  OcrProvisionalScoreResponseModel? ocrExtractedData;

  void _onInitialized(
    HistoryListInitialized event,
    Emitter<HistoryListState> emit,
  ) {
    add(
      HistoryListEvent.fetchHistory(
        page: IntegerConstants.defaultPage,
        sortOption: _selectedSortOption,
      ),
    );
  }

  void _onHistoryListFetched(
    HistoryListFetched event,
    Emitter<HistoryListState> emit,
  ) async {
    try {
      _selectedSortOption = event.sortOption;

      final selectedSortOptionIndex = _sortOptions.indexWhere(
        (e) => e.type == event.sortOption.type,
      );
      selectedSortIndex =
          selectedSortOptionIndex < 0 ? 0 : selectedSortOptionIndex;
      if (event.page != null) {
        _page = event.page!;
        _historyItems = [];
        _historyData = null;
        _hasReachedMaxItems = false;
      }

      _isFetchingList = true;
      emit(const HistoryListState.loading());

      final response = await _repository.getRecentlyViewed(
        request: GetHistoryRequestModel(
          page: _page,
          perPage: _perPage,
          historyType:
              MyItemsUtils()
                  .getHistorySortParam(event.sortOption.type)
                  .toLowerCase(),
        ),
      );
      if (response.isSuccess && response.data != null) {
        _isFetchingList = false;
        final data = response.data!;
        final filteredItems =
        data.items.where((item) => item.product != null).toList();
        _historyData = GetHistoryResponseModel(
          id: data.id,
          listName: data.listName,
          createdAt: data.createdAt,
          updatedAt: data.updatedAt,
          page: data.page,
          perPage: data.perPage,
          totalEntries: data.totalEntries,
          items: [...(_historyData?.items ?? []), ...filteredItems],
        );

        _historyItems = [..._historyItems, ...filteredItems];

        if ((response.data?.items.length ?? 0) < _perPage) {
          _hasReachedMaxItems = true;
        } else {
          _page += 1;
        }
        emit(
          HistoryListState.success(
            selectedSortIndex:
                selectedSortOptionIndex < 0 ? 0 : selectedSortOptionIndex,
          ),
        );
      } else {
        emit(
          HistoryListState.failure(
            UnknownNetworkException(
              message: '',
              statusCode: null,
              originalError: null,
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      _isFetchingList = false;
      emit(HistoryListState.failure(exception));
    }
  }

  void _onHistoryListSortChanged(
    HistoryListSortChanged event,
    Emitter<HistoryListState> emit,
  ) {
    selectedSortIndex = event.selectedIndex;
    _selectedSortOption = _sortOptions[selectedSortIndex];

    selectedSortIndex = event.selectedIndex;

    _page = IntegerConstants.defaultPage;
    _historyItems = [];
    _historyData = null;
    _hasReachedMaxItems = false;

    emit(
      HistoryListState.updateSortIndex(selectedSortIndex: selectedSortIndex),
    );

    add(
      HistoryListEvent.fetchHistory(
        page: IntegerConstants.defaultPage,
        sortOption: _selectedSortOption,
      ),
    );
  }
}
