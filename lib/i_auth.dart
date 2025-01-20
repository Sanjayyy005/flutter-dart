abstract class IAuth{
  String loginUser(String email, String password);
}




class  S {

  final IAuth auth;


  S(this.auth);

  void loginUser(String email, String password) {
    auth.loginUser(email, password);
  }


}