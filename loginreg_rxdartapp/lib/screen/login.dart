import 'package:flutter/material.dart';
import 'package:loginreg_rxdartapp/bloc/login_bloc.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Silahkan Login'),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 16.0,),
                TextField(
                  onChanged: loginBloc.onChangeUsername,
                  decoration: InputDecoration(
                    hintText: 'Masukan Username',
                    labelText: 'Username',
                    icon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0)
                    )
                  ),
                ),
                SizedBox(height: 8.0,),
                TextField(
                  obscureText: true,
                  onChanged: loginBloc.onChangePassword,
                  decoration: InputDecoration(
                      hintText: 'Masukan Password',
                      labelText: 'Password',
                      icon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0)
                      )
                  ),
                ),
                RaisedButton(
                  child: Text('Login', style: TextStyle(color: Colors.white),),
                  color: Colors.blueAccent,
                  onPressed: (){
                    loginBloc.login();
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0)
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
