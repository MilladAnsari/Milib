import 'package:flutter/material.dart';
import 'package:untitled2/screens/second_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(
          child: Text('میلایب'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                readOnly: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'نام کاربری',
                  icon: Icon(
                    Icons.account_circle_outlined,
                  )
                ),

                validator: (value) {
                  if (value!.isEmpty) {
                    return 'نام کاربری خود را وارد کنید.';
                  }
                  else if(value! != "میلاد"){
                    return 'کاربر وجود ندارد';
                  }
                  flag = true;
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              TextFormField(
                obscureText: true,
                readOnly: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  labelText: 'رمز عبور',
                 // hintText: 'Enter your password',
                  icon: Icon(
                      Icons.lock_outlined,
                  )
                ),
                validator: (value) {
                  if(!flag)
                      return null;
                  if (value!.isEmpty) {
                    return 'رمز عبور خود را وارد کنید';
                  }
                  else if(value! != "میلاد"){
                    return 'رمز عبور نامعتبر است.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),
              SizedBox(height: 24.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      String title = "Millib";
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SecondScreen(queteText: title, authorName: title + title,)));
                      // Perform login logic here
                    }
                  },
                  child: Text('ورود'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}