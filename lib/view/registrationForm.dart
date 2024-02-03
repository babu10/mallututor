import 'package:flutter/material.dart';

class MyRegForm extends StatefulWidget {
  const MyRegForm({super.key});

  @override
  State<MyRegForm> createState() => _MyRegFormState();
}

class _MyRegFormState extends State<MyRegForm> {
  String fullName = '';
  String email = "";
  String phoneNumber = '';
  String password = "";
  String confirmPassword = '';

  var _nameController = TextEditingController();
  var _emailController = TextEditingController();
  var _phoneController = TextEditingController();
  var _passwordController = TextEditingController();
  var _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
        onPressed: () {

      },),
      body: Center(
        child: ListView(
          children: [
            Form(
              child: Column(
                children: [
                  Text(fullName+"/"+email+"/"+phoneNumber),

                  Text(phoneNumber),
                  Text(password),
                  Text(confirmPassword),
                  SizedBox(
                    height: 40.0, // Replace 30.0 with your desired spacing
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      width: 200,
                      child: Text(
                        "Create Account",
                        style: TextStyle(color: Colors.blue, fontSize: 24),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        keyboardType: TextInputType.name,
                        controller: _nameController,
                        decoration: InputDecoration(
                            label: Text(
                              "Full Name",
                              style: TextStyle(fontSize: 24),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        decoration: InputDecoration(
                            label: Text(
                              "Email Address",
                              style: TextStyle(fontSize: 24),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        controller: _phoneController,
                        decoration: InputDecoration(
                            label: Text(
                              "Phone Number",
                              style: TextStyle(fontSize: 24),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        controller: _passwordController,
                        decoration: InputDecoration(
                            label: Text(
                              "Password",
                              style: TextStyle(fontSize: 24),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300,
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        controller: _confirmPasswordController,
                        decoration: InputDecoration(
                            label: Text(
                              "Confirm Password",
                              style: TextStyle(fontSize: 24),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      width: 200,
                      child: Text(
                        "Agree with Terms & Condition",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    height: 60,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                        onPressed: () {
                          setState(() {
                            fullName = _nameController.text;
                            email = _emailController.text;
                            phoneNumber = _phoneController.text;
                            password = _passwordController.text;
                            confirmPassword = _confirmPasswordController.text;
                            // print(fullName);
                            //  print(_passwordController.text);
                          });
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      width: 250,
                      child: Text(
                        "Already have an account? Login",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
