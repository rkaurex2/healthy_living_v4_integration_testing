enum SortBy {
  hazardScore(queryParamValue: "hazard_score"),
  name(queryParamValue: "name"),
  updatedDate(queryParamValue: "updated_date"),
  newest(queryParamValue: "newest");

  final String queryParamValue;
  const SortBy({required this.queryParamValue});
}
