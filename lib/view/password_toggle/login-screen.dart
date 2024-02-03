import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mallututor/view/my-sample.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();
  String email = "", password = "";

  //Creating formKey
  final _loginFormKey = GlobalKey<FormState>();

  RegExp emailPattern =
      RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
  RegExp passwordPattern =
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[A-Za-z\d\W_]{8,}$');

  //check password visibility

  bool checkPasswordVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Form(
              key: _loginFormKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Lottie.asset(
                      'assets/animations/login.json',
                      height: 200,
                      width: 200,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    height: 100,
                    child: Padding(
                        padding: EdgeInsets.all(20),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Field can't be empty";
                            }
                            //To test condition
                            // else if (value.contains("@gmail.com")) {
                            //   return "Please enter valid email id";
                            // }
                            //Add regex pattern

                            else if (!emailPattern.hasMatch(value)) {
                              return "Please enter valid email id";
                            }
                            return null;
                          },
                          controller: _emailController,
                          decoration: const InputDecoration(
                              label: Text("Email"),
                              border: OutlineInputBorder()),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    height: 100,
                    child: Padding(
                        child: TextFormField(
                          obscureText: checkPasswordVisibility,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Filed can't be empty";
                            } else if (!passwordPattern.hasMatch(value)) {
                              return "Enter a strong password";
                            }
                            return null;
                          },
                          controller: _passwordController,
                          decoration: InputDecoration(
                              suffixIcon: checkPasswordVisibility
                                  ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      checkPasswordVisibility = !checkPasswordVisibility;

                                    });

                                  },
                                  icon: Icon(Icons.visibility))
                                  : IconButton(
                                      onPressed: () {
                                        setState(() {
                                          checkPasswordVisibility = !checkPasswordVisibility;

                                        });
                                      },
                                      icon: Icon(Icons.visibility_off)),
                              label: Text("Password"),
                              border: OutlineInputBorder()),
                        ),
                        padding: EdgeInsets.all(20)),
                  ),
                  TextButton(onPressed: () {}, child: Text("Forgot Password?")),
                  SizedBox(
                    width: 250,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_loginFormKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Success")));
                          }
                        },
                        child: Text("Login")),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/google.png',
                            width: 50,
                            height: 50,
                          ),
                          // <-- Use 'Image.asset(...)' here
                          Text('Sign in with Google'),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {}, child: Text("No Account? Create New")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
