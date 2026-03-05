import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_compare/product_compare_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/widget/verified_product_section_builder.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class VerifiedProductStatusWidget extends StatelessWidget {
  const VerifiedProductStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProductCompareBloc>();

    final cleaner = bloc.cleanerDetailResponseModel;
    if (cleaner != null && cleaner.isNotEmpty) {
      final firstVerified = _isCleanerVerified(cleaner.first.grade);
      final secondVerified = _isCleanerVerified(cleaner.last.grade);
      return VerifiedProductSectionBuilder(
        isFirstVerified: firstVerified,
        isSecondVerified: secondVerified,
      );
    }

    final cosmetic = bloc.cosmeticDetailResponseModel;
    if (cosmetic != null && cosmetic.isNotEmpty) {
      final firstVerified = cosmetic.first.ewgVerified ?? false;
      final secondVerified = cosmetic.last.ewgVerified ?? false;
      return VerifiedProductSectionBuilder(
        isFirstVerified: firstVerified,
        isSecondVerified: secondVerified,
      );
    }

    return const SizedBox.shrink();
  }

  static bool _isCleanerVerified(String? grade) {
    final g = (grade ?? '').trim().toUpperCase();
    return g == StringConstants.verified; // assume this is already UPPERCASE
  }
}
