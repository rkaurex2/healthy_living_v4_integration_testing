import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_scan/src/ui/bloc/submit_product/submit_product_event.dart';
import 'package:healthy_living_scan/src/ui/widgets/submit_product_info_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubmitProductInfoScreen extends StatefulWidget {
  final SubmitProductInfoParams infoUIModel;

  const SubmitProductInfoScreen({required this.infoUIModel, super.key});

  @override
  State<SubmitProductInfoScreen> createState() =>
      _SubmitProductInfoScreenState();
}

class _SubmitProductInfoScreenState extends State<SubmitProductInfoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              injector.get<SubmitProductBloc>()..add(
                SubmitProductEvent.started(
                  productCategory: widget.infoUIModel.productCategoryType,
                ),
              ),
      child: SubmitProductInfoContentScreen(infoUIModel: widget.infoUIModel),
    );
  }
}
