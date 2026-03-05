import 'package:healthy_living/src/core/test_keys.dart';

import '../base_page.dart';

class ListsPage extends BasePage {
  const ListsPage(super.tester);

  Future<void> waitForScreen() => waitFor(TestKeys.listsScreen);
  Future<void> tapCreateList() => tap(TestKeys.createListButton);
  Future<void> enterListName(String name) =>
      enterText(TestKeys.listNameField, name);
  Future<void> tapList() => tap(TestKeys.listItemCard);
  Future<void> tapRename() => tap(TestKeys.renameListButton);
  Future<void> tapDelete() => tap(TestKeys.deleteListButton);
  Future<void> confirmDelete() => tap(TestKeys.confirmDeleteButton);
  Future<void> tapShare() => tap(TestKeys.shareListButton);
}
