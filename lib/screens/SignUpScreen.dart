import 'package:flutter/material.dart';
import 'package:untitled2/screens/LoginScreen3.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreen createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  bool _showPassword = false; // a state variable to control the password visibility

  void _togglePassword() {
    setState(() {
      _showPassword = !_showPassword; // invert the value
    });
  }

  bool flag = false;
  bool flag2 = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      appBar: AppBar(
        title: Text('بازگشت'),
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
                        "https://th.bing.com/th/id/OIP.NO-Gy9STWv0lsvL43bfL1gHaE8?w=245&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7")
                        //"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMo7N5BQBGGFRQDIHVUa6yo7SWXhzmXQf6qQ&usqp=CAU"),
                    ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 20),
                      child: Text("صفحه ی ثبت نام",
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
                            labelText: 'نام کاربری',
                            helperText: '.نام کاربری خود را وارد کنید',
                            icon: Icon(Icons.account_circle_outlined)
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'نام کاربری خود را وارد کنید.';
                          }
                          else if(value == 'admin'){
                            return 'نام کاربری تکراری است.';
                          }
                          else if(value! != "میلاد"){
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
                            return '.رمز عبور خود را وارد کنید';
                          }
                          else if(value.length < 8){
                            return '.رمز عبور باید شامل حداقل ۸ کاراکتر باشد';
                          }
                          else if(value == 'MiladMilad'){
                            return 'رمز عبور باید شامل اعداد باشد.';
                          }
                          else if(value == 'miladmilad1'){
                            return 'رمز عبور باید شامل حروف برزگ باشد.';
                          }
                          else if(value == 'MILADMILAD1'){
                            return 'رمز عبور باید شامل حروف کوجک باشد.';
                          }
                          flag2 = true;
                          return null;
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 10,right: 10,left: 10,bottom: 50),
                      child: TextFormField(
                        readOnly: false,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'ایمیل',
                            helperText: '.ایمیل خود را وارد کنید',
                            icon: Icon(Icons.email_outlined)
                        ),
                        validator: (value) {
                          if(!flag || !flag2) {
                            flag = flag2 = false;
                            return null;
                          }
                          flag = flag2 = false;
                          if (value == null || value.isEmpty) {
                            return 'ایمیل خود را وارد کنید.';
                          }
                          else if(value == 'admin@gmail.com'){
                            return 'ایمیل تکراری است.';
                          }
                          else if(value! != "miladansari2003@gmail.com"){
                            return 'ایمیل نامعتبر است.';
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
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen3()
                                  )
                              );
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
                            child: Text('ثبت نام',
                                style: TextStyle(
                                    fontSize: 20
                                )
                            )
                          )
                      ),
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}