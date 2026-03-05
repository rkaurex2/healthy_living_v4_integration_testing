class UserListDetailRequest {
  final int page;
  final int perPage;

  UserListDetailRequest({required this.page, required this.perPage});

  Map<String, String> toQueryParams() {
    return {'page': page.toString(), 'per_page': perPage.toString()};
  }
}
