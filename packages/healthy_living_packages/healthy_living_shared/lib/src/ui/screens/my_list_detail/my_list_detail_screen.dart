import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_bloc.dart';
import 'package:healthy_living_shared/src/ui/screens/my_list_detail/my_list_detail_content_screen.dart';

class MyListDetailScreen extends StatelessWidget {
  final String listId;
  final String? openedFrom;

  const MyListDetailScreen({required this.listId, super.key, this.openedFrom});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => injector.get<MyListDetailBloc>(),
      child: MyListDetailContentScreen(openedFrom: openedFrom, listId: listId),
    );
  }
}
