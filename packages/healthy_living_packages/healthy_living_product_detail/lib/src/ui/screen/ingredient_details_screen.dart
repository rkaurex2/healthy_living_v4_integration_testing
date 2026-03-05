import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/ingredient_details/ingredient_details_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/ingredient_details/ingredient_details_event.dart';
import 'package:healthy_living_product_detail/src/ui/screen/ingredient_detail_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientDetailsScreen extends StatelessWidget {
  final String ingredientId;

  const IngredientDetailsScreen({required this.ingredientId, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              injector.get<IngredientDetailsBloc>()
                ..add(IngredientDetailsEvent.requested(id: ingredientId)),
      child: const IngredientDetailsContentScreen(),
    );
  }
}
