import 'package:flutter/material.dart';
class CowAppLogin extends StatefulWidget {
  const CowAppLogin({super.key});

  @override
  State<CowAppLogin> createState() => _CowAppLoginState();
}

class _CowAppLoginState extends State<CowAppLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/cow_1.jpg',))),
        child: Center(
          child: SizedBox(
            width: 350,
            height: 550,
            child: Card(
              color: Color(0xFFFFFFFF),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/dairydosth.png",width: 150,),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: InputDecoration(

                            labelStyle: TextStyle(
                                color: Colors.grey
                            ),
                            label: Text("Email")
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: const InputDecoration(

                            labelStyle: TextStyle(
                                color: Colors.grey
                            ),
                            label: Text("Password")
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 220,
                      height: 50,
                      child: ElevatedButton(
                          style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.green) ),
                          onPressed: () {

                          }, child: const Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: () {

                          }, child:  Row(
                            children: [
                              Image.asset(
                                'assets/google.png',
                                width: 50,
                                height: 50,
                              ),const Text('Sign in with Google')
                            ],
                          ),),

                          // <-- Use 'Image.asset(...)' here

                        ],
                      ),
                    ) ,

                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                          onPressed: () {}, child: Text("No Account?Create New")),
                    )

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
