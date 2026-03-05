abstract interface class CreateListAnalytics {
  Future<void> logListCreated({
    required String listId,
    required String listName,
    int? itemCount,
  });
}
