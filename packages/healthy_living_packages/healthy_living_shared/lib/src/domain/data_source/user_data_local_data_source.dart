abstract interface class UserDataLocalDataSource {
  Future<void> saveUserData(String userDataModel);

  Future<String?> getUserData();

  Future<bool> remove(String key);
}
