/// Test data constants for integration tests.
/// Credentials are injected via --dart-define at CI runtime — never hardcoded.

abstract class TestAccounts {
  static const standardEmail =
      String.fromEnvironment('TEST_ACCOUNT_EMAIL');
  static const standardPassword =
      String.fromEnvironment('TEST_ACCOUNT_PASSWORD');
  static const premiumEmail =
      String.fromEnvironment('TEST_ACCOUNT_PREMIUM_EMAIL');
  static const premiumPassword =
      String.fromEnvironment('TEST_ACCOUNT_PREMIUM_PASSWORD');
}

abstract class TestProducts {
  static const personalCareUpc = '012345678901';
  static const personalCareName = 'Test Personal Care Product';
  static const personalCareBrand = 'Test Brand A';
  static const foodUpc = '012345678902';
  static const foodName = 'Test Food Product';
  static const cleanerUpc = '012345678903';
  static const cleanerName = 'Test Cleaner Product';
  static const cleanerUpc2 = '012345678904';
  static const unverifiedUpc = '012345678905';
  static const avoidIngProductUpc = '012345678906';
}

abstract class TestLists {
  static const existingListName = 'My Test List';
  static const existingListName2 = 'My Second List';
  static const newListName = 'Automation Created List';
  static const renamedListName = 'Automation Renamed List';
}

abstract class TestIngredients {
  static const avoidName = 'Parabens';
  static const preferName = 'Aloe Vera';
  static const searchableName = 'Sodium Lauryl Sulfate';
}

abstract class TestBrands {
  static const searchable = 'Test Brand A';
}

abstract class TestSearchTerms {
  static const valid = 'shampoo';
  static const noResults = 'zzzzzzznotaproduct123';
}
