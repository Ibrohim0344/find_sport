abstract interface class UserRepository {
  Future<void> register();

  Future<void> login(String phoneNumber, String password);

  Future<void> logOut();
}
