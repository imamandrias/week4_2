import 'package:rxdart/rxdart.dart';

class LoginBloc{
  final _usernameController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //output stream
  Stream<String> get username => _usernameController.stream;
  Stream<String> get password => _passwordController.stream;

  //event
  Function(String) get onChangeUsername => _usernameController.sink.add;
  Function(String) get onChangePassword => _passwordController.sink.add;

  //Tombol Login
  void login(){
    final validUsername = _usernameController.value;
    final validPassword = _passwordController.value;
    print('Username adalah $validUsername, dan Password adalah $validPassword');
  }
  dispose() {
    _usernameController.close();
    _passwordController.close();
  }
}

final loginBloc = LoginBloc();