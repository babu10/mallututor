import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CowAppLogin extends StatefulWidget {
  const CowAppLogin({super.key});

  @override
  State<CowAppLogin> createState() => _CowAppLoginState();
}

class _CowAppLoginState extends State<CowAppLogin> {
  final _loginFormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool checkPasswordVisibility = true;
  RegExp emailPattern =
      RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
  RegExp passwordPattern =
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_])[A-Za-z\d\W_]{8,}$');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xFF316FF6),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Lottie.asset(

                    width: 100,
                    height: 200,

                    "assets/animations/lottie2.json"),
              ),
              Center(
              child: SizedBox(
                width: 350,
                height: 500,
                child: Form(
                  key: _loginFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          cursorColor: Colors.white,

                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Field can't be empty";
                            } else if (!emailPattern.hasMatch(value)) {
                              return "Please enter valid email";
                            }
                            return null;
                          },
                          controller: _emailController,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35),

                                borderSide: BorderSide(width: 3, color: Colors.white), //<-- SEE HERE
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35),

                                borderSide: BorderSide(width: 3, color: Colors.white), //<-- SEE HERE
                              ),
                              border: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(35),
                                borderSide:
                                    BorderSide(width: 3, color: Colors.white),
                              ),
                              labelStyle: TextStyle(color: Colors.white),
                              label: Text("Email")),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          obscureText: checkPasswordVisibility,
                          controller: _passwordController,
                          validator: (value) {
                            if (value == null) {
                              return "Field can't be empty";
                            } else if (!passwordPattern.hasMatch(value)) {
                              return "Please enter valid password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            focusColor: Colors.red,

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35),

                                borderSide: BorderSide(width: 3, color: Colors.white), //<-- SEE HERE
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35),

                                borderSide: BorderSide(width: 3, color: Colors.white), //<-- SEE HERE
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(35),
                                borderSide:
                                BorderSide(width: 3, color: Colors.white),
                              ),
                              suffixIcon: checkPasswordVisibility
                                  ? IconButton(
                                color: Colors.white,
                                      onPressed: () {
                                        setState(() {
                                          checkPasswordVisibility =
                                              !checkPasswordVisibility;
                                        });
                                      },
                                      icon: Icon(Icons.visibility))
                                  : IconButton(
                                  color: Colors.white,

                                  onPressed: () {
                                        setState(() {
                                          checkPasswordVisibility =
                                              !checkPasswordVisibility;
                                        });
                                      },
                                      icon: Icon(Icons.visibility_off)),
                              labelStyle: TextStyle(color: Colors.white),
                              label: Text("Password",style: TextStyle(fontSize: 18),)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      SizedBox(
                        width: 220,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFFFFFFFF))),
                          onPressed: () {
                            if (_loginFormKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Success")));
                            }
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                            "------------------- or ---------------------",
                            style: TextStyle(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/google.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  const Text('Sign in with Google')
                                ],
                              ),
                            ),

                            // <-- Use 'Image.asset(...)' here
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: () {},
                            child: Text("No Account?Create New",
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
        ],
          ),
        ),
      ),
    );
  }
}
