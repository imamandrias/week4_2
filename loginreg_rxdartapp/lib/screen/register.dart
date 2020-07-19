import 'package:flutter/material.dart';

class PageRegister extends StatefulWidget {
  @override
  _PageRegisterState createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Terlebih Dahulu'),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukan Nama Lengkap',
                        labelText: 'Nama Lengkap',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0)
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukan Nomor Handphone',
                        labelText: 'Handphone',
                        prefixIcon: Icon(Icons.phone_android),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0)
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0,),
                    TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: 'Masukan Alamat',
                        labelText: 'Alamat',
                        prefixIcon: Icon(Icons.location_on),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0)
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukan Username',
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0)
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Masukan Password',
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0)
                        ),
                      ),
                    ),
                    RaisedButton(
                      child: Text('Daftar', style: TextStyle(color: Colors.white),),
                      color: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
