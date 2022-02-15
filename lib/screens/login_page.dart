import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginandsignup/screens/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false, //klavyeyi açtığımızda 'bottom overflowed by pixels flutter' gibi bir hatayla karşılaşmamak için
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildLogInText(),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                    //  border: OutlineInputBorder(),
                    labelText: ("Email address"),
                    icon: Icon(
                      Icons.mail,
                      color: Colors.black,
                    ),
                  ),
                  controller: _email,
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 50),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      labelText: ("Password"),
                      icon: Icon(
                        Icons.vpn_key,
                        color: Colors.black,
                      )),
                  controller: _password,
                ),
              ),
              SizedBox(height: 150),
              buildLoginButton(context),
              SizedBox(height: 10),
              buildSignupText(context),
            ],
          ),
        ),
      ),
    );
  }
}

Padding buildLogInText() {
  return Padding(
    padding: EdgeInsets.only(left: 20, top: 50),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Login',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Sign into your account ',
          style: TextStyle(
            //  fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.black54,
          ),
        ),
      ],
    ),
  );
}

buildLoginButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 45.0),
    child: Container(
      padding: EdgeInsets.only(
        right: 105,
        left: 105,
      ),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(80.0)),
      child: ElevatedButton(
        child: Text(
          'LOG IN',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/homescreen');
        },
        style: ElevatedButton.styleFrom(primary: Colors.black),
      ),
    ),
  );
}

buildSignupText(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Don't have an account ? ",
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
      ),
      new GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignupPage()));
        },
        child: new Text(
          "Sign up",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      )
    ],
  );
}
