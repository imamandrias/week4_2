import 'dart:async';

class Validators{
  final validateUsername = StreamTransformer<String, String>.fromHandlers(handleData: (username, sink){
    if(username.length > 5){
      sink.add(username);
    }else{
      sink.add('Username minimal 5 Karakter');
    }
  });
  final validatePassword = StreamTransformer<String, String>.fromHandlers(handleData: (password, sink){
    if(password.length > 6){
      sink.add(password);
    }else{
      sink.add('Password minimal 6 Karakter');
    }
  });
}