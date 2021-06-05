import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projectapp/Home.dart';
import 'AbousUs.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login();
  }
}

class _Login extends State<Login> {
  String nama;

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Form(
              key: formkey,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                children: <Widget>[
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset('assets/images/logoeditted.png'),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                    child: TextFormField(
                      onChanged: (text) {
                        nama = text;
                      },
                      controller: username,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      validator: (String val) {
                        if (val.isEmpty) {
                          return "*Username must be filled";
                        } else if (!(val.length >= 5) ||
                            !(val.length <= 20) && val.isNotEmpty) {
                          return "*Username must be 5-20 characters";
                        } else if (val.contains(" ")) {
                          return "*Username must'nt contain space character";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Username",
                          errorStyle: TextStyle(fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 3)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 3)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 3)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 3))),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: TextFormField(
                      controller: password,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      validator: (val) =>
                          val.isEmpty ? "*Password must be filled" : null,
                      decoration: InputDecoration(
                          hintText: "Password",
                          errorStyle: TextStyle(fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 3)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 3)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 3)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 3))),
                    ),
                  ),
                  Column(children: <Widget>[
                    ButtonTheme(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      height: 50,
                      buttonColor: Colors.black,
                      splashColor: Colors.blue,
                      child: Container(
                          margin: EdgeInsets.fromLTRB(10, 35, 10, 10),
                          child: RaisedButton(
                              onPressed: () {
                                if (formkey.currentState.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Home(nama: nama)),
                                  );
                                }
                              },
                              child: Container(
                                padding:
                                    EdgeInsets.only(left: 35.0, right: 35.0),
                                child: Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ))),
                    )
                  ])
                ],
              ))),
    );
  }
}
