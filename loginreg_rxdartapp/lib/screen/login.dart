import 'package:flutter/material.dart';
import 'package:loginreg_rxdartapp/bloc/login_bloc.dart';
import 'package:loginreg_rxdartapp/screen/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 16.0,),
                StreamBuilder<String>(
                  stream: loginBloc.username,
                  builder: (context, snapshot) {
                    return TextField(
                      onChanged: loginBloc.onChangeUsername,
                      decoration: InputDecoration(
                        hintText: 'Masukan Username',
                        labelText: 'Username',
                          prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0)
                        ),
                        errorText: snapshot.error
                      ),
                    );
                  }
                ),
                SizedBox(height: 8.0,),
                StreamBuilder<String>(
                  stream: loginBloc.password,
                  builder: (context, snapshot) {
                    return TextField(
                      obscureText: true,
                      onChanged: loginBloc.onChangePassword,
                      decoration: InputDecoration(
                          hintText: 'Masukan Password',
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0)
                          ),
                        errorText: snapshot.error
                      ),
                    );
                  }
                ),
                StreamBuilder<bool>(
                  stream: loginBloc.isValid,
                  builder: (context, snapshot) {
                    return RaisedButton(
                      child: Text('Login', style: TextStyle(color: Colors.white),),
                      color: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)
                      ),
                      onPressed: snapshot.hasData?
                      loginBloc.login:null,
                    );
                  }
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 0, 2.0, 0),
                  child: MaterialButton(
                    textColor: Colors.green,
                    child: Text('Belum Punya Akun? Silahkan Daftar'),
                    onPressed: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => PageRegister()
                      )
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
