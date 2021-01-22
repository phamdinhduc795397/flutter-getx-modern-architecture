abstract class AuthenticationRepository {
  Future<bool> signIn();
}

class AuthenticationRepositoryIml extends AuthenticationRepository {
  @override
  Future<bool> signIn() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }
}
