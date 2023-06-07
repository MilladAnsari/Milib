import 'package:flutter/material.dart';

import 'SignUpScreen.dart';

class LoginScreen3 extends StatefulWidget {
  const LoginScreen3({Key? key}) : super(key: key);

  @override
  _LoginScreenState3 createState() => _LoginScreenState3();
}

class _LoginScreenState3 extends State<LoginScreen3> {
  bool _showPassword = false; // a state variable to control the password visibility

  void _togglePassword() {
    setState(() {
      _showPassword = !_showPassword; // invert the value
    });
  }

  bool flag = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0), // set the height of the appbar
        child: Container(
          color: Colors.blue,
          child: Center(
            child: Text('صفحه ی ورود', style: TextStyle(fontSize: 30),),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center, child:CircleAvatar(
                    radius: 90,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMo7N5BQBGGFRQDIHVUa6yo7SWXhzmXQf6qQ&usqp=CAU"),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 20),
                    child: Text("!به میلایب خوش آمدید",
                      style: TextStyle(color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 50,right: 10,left: 10,bottom: 50),
                    child: TextFormField(
                      readOnly: false,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'نام کاربری/ایمیل',
                          helperText: '.نام کاربری/ایمیل خود را وارد کنید',
                          icon: Icon(Icons.account_circle_outlined)
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'نام کاربری/ایمیل خود را وارد کنید.';
                        }
                        else if(value! != "میلاد" && value != "miladansari2003@gmail.com"){
                          return 'کاربر وجود ندارد';
                        }
                        flag = true;
                        return null;
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,

                    padding: EdgeInsets.only(top: 10,right: 10,left: 10,bottom: 50),
                    child: TextFormField(
                      obscureText: !_showPassword,
                      readOnly: false,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'رمز عبور',
                          helperText: '.رمز عبور خود را وارد کنید',
                          icon: Icon(Icons.lock_outlined),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _showPassword ? Icons.visibility : Icons.visibility_off, // change the icon based on the state
                            ),
                          onPressed: _togglePassword
                          ),
                      ),
                      validator: (value) {
                        if(!flag)
                          return null;
                        if (value!.isEmpty) {
                          return 'رمز عبور خود را وارد کنید';
                        }
                        else if(value! != "MiladMilad1"){
                          return 'رمز عبور نامعتبر است.';
                        }
                        return null;
                      },
                    ),
                  ),
                  Center(
                      child :ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                          ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          String title = "Millib";
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            // gradient: LinearGradient(
                            //     colors: [
                            //       Colors.blue.withOpacity(0.4),
                            //       Colors.blue.withOpacity(0.5),
                            //       Colors.blue.withOpacity(0.6),
                            //     ]
                            // )
                        ),
                        padding: EdgeInsets.only(bottom: 10, right: 10, left: 10, top: 10),
                        child: Text('ورود',
                          style: TextStyle(
                              fontSize: 20
                          ),
                        ),
                      )
                  ),
                  ),
                ]
            ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => SignUpScreen()
                    )
                );
              },
              child: Text('ثبت نام'),
            ),
          ],
        ),
      ),
    );
  }
}