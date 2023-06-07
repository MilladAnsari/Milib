import 'package:flutter/material.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({Key? key}) : super(key: key);

  @override
  _LoginScreenState2 createState() => _LoginScreenState2();
}

class _LoginScreenState2 extends State<LoginScreen2> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Scaffold(
        //backgroundColor: Colors.blueGrey[900],
        // appBar: AppBar(
        //   centerTitle: true,
        //   // backgroundColor: Colors.amber,
        //   // foregroundColor: Colors.black,
        //   iconTheme: IconThemeData(
        //     color: Colors.brown, //change your color here
        //     size: 24.0,
        //     opacity: 0.8,
        //   ),
        //   title: const Text('صفحه ی ورود'),
        // ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0), // set the height of the appbar
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text('صفحه ی ورود', style: TextStyle(fontSize: 30),),
            ),
          ),
        ),
        body: Container(
         // color: Colors.brown,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(right: 50, left: 50, top: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '!به میلایب خوش آمدید',
                    style: TextStyle(
                      // color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.0),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'نام کاربری',
                            labelStyle: TextStyle(),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide( width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide( width: 2.0),
                            ),
                              icon: Icon(
                                Icons.account_circle_outlined,
                              )
                          ),
                          style: TextStyle(),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'نام کاربری خود را وارد کنید.';
                            }
                            else if(value! != "میلاد"){
                              return 'کاربر وجود ندارد';
                            }
                            flag = true;
                            return null;
                          },
                        ),
                        SizedBox(height: 16.0),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: 'رمز عبور',
                            labelStyle: TextStyle(),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(width: 2.0, ),
                            ),
                              icon: Icon(
                                Icons.lock_outlined,
                              )
                          ),
                          style: TextStyle(),
                          obscureText: true,
                          validator: (value) {
                            if(!flag)
                              return null;
                            if (value == null || value.isEmpty) {
                              return '.رمز عبور خود را وارد کنید';;
                            }
                            else if(value! != "میلاد"){
                              return 'رمز عبور نامعتبر است.';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16.0),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                  Text('Login successful!'),
                                ),
                              );
                            }
                          },
                          child: Text('ورود'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
