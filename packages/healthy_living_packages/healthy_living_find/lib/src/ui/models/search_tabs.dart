import 'package:healthy_living_shared/healthy_living_shared.dart' show SearchTabType;

class SearchTabData {
  final int index;
  final String name;
  final SearchTabType type;

  const SearchTabData({
    required this.index,
    required this.name,
    required this.type,
  });
}

