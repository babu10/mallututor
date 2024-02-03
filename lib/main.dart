import 'package:flutter/material.dart';
import 'package:mallututor/view/btm_navbar1.dart';
import 'package:mallututor/view/container-sample.dart';
import 'package:mallututor/view/container-sample2.dart';
import 'package:mallututor/view/cow_app/login_page.dart';
import 'package:mallututor/view/font-size-sample.dart';
import 'package:mallututor/view/gestureOne.dart';
import 'package:mallututor/view/grid-view.dart';
import 'package:mallututor/view/list-view.dart';
import 'package:mallututor/view/list_box.dart';
import 'package:mallututor/view/list_box2.dart';
import 'package:mallututor/view/loginScreen.dart';
import 'package:mallututor/view/multichildlayout.dart';
import 'package:mallututor/view/my-bottom-navigation.dart';
import 'package:mallututor/view/my_radio_button.dart';
import 'package:mallututor/view/password_toggle/login-screen.dart';
import 'package:mallututor/view/password_toggle/text_Button.dart';
import 'package:mallututor/view/radio_button.dart';
import 'package:mallututor/view/registrationForm.dart';
import 'package:mallututor/view/scaffold_1.dart';

//import 'package:mallututor/view/multichildlayout.dart';
import 'package:mallututor/view/splash-screen.dart';
import 'package:mallututor/view/stack-widget.dart';
import 'package:mallututor/view/tabBar.dart';
import 'package:mallututor/view/textField.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CowAppLogin(),
    );
  }
}

