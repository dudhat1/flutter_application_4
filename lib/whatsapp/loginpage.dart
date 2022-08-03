import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_4/whatsapp/secondpage.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  bool _isHide = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Form(
            key: _loginFormKey,
            child: Column(children: [
              const Text(
                "Login page",
                style: TextStyle(fontSize: 40),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade400,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: const Icon(Icons.email),
                        hintText: "Enter your Email",
                      ),
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "Enter email";
                        }
                        if (!value.isValidEmail()) {
                          return "Enter vailde Email";
                        }
                        return null;
                      }),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade400,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: const Icon(Icons.lock),
                        hintText: "Password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isHide = !_isHide;
                            });
                          },
                          icon: Icon(_isHide
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "Enter password";
                        }
                        return null;
                      }),
                      obscureText: _isHide,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Forget Password",
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_loginFormKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => Second()));
                  }
                },
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

extension EmailVaildator on String {
  bool isValidEmail() {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(this);
  }
}

