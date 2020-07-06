import 'package:loginreg_rxdartapp/bloc/validators.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc with Validators{
  final _usernameController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //output stream
  Stream<String> get username => _usernameController.stream.transform(validateUsername);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);
  Stream<bool> get isValid => CombineLatestStream.combine2(username, password, (username, password) => true);

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