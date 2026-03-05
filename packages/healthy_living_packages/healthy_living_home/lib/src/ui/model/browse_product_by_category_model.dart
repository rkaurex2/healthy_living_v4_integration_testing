import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowseProductByCategoryModel {
  final String title;
  final String imagePath;
  final Color bgColor;
  final Color textColor;
  final BrowseProductByCategoryType type;

  const BrowseProductByCategoryModel({
    required this.title,
    required this.imagePath,
    required this.bgColor,
    required this.textColor,
    required this.type,
  });
}
