import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_product_detail/src/domain/models/ingredient_details/ingredient_info_request_model.dart';
import 'package:healthy_living_product_detail/src/domain/repository/product_detail_repository.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/ingredient_details/ingredient_details_event.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/ingredient_details/ingredient_details_state.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class IngredientDetailsBloc
    extends Bloc<IngredientDetailsEvent, IngredientDetailsState> {
  final ProductDetailRepository _productDetailRepository;

  IngredientDetailsBloc({
    required ProductDetailRepository productDetailRepository,
  }) : _productDetailRepository = productDetailRepository,
       super(const IngredientDetailsState.initial()) {
    on<IngredientDetailsRequested>(_onRequested);
  }

  Future<void> _onRequested(
    IngredientDetailsRequested event,
    Emitter<IngredientDetailsState> emit,
  ) async {
    try {
      emit(const IngredientDetailsState.loading());
      final response = await _productDetailRepository.getIngredientInfo(
        request: IngredientInfoRequestModel(id: event.id),
      );

      if (response.isSuccess && response.data != null) {
        emit(IngredientDetailsState.success(data: response.data!));
      } else {
        emit(
          IngredientDetailsState.failure(
            UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(IngredientDetailsState.failure(exception));
    }
  }
}
