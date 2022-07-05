import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intern_task/view/pages/my_home_page.dart';
import 'package:intern_task/view/widgets/LoginWidget/facebook_icon_button.dart';

import '../widgets/SharedWidgets/hero_tag.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: HeroTag(width: MediaQuery.of(context).size.width*0.7,)
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'اهلا بك في تطبيق املاك',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'سجل الدخول عن طريق فيسبوك واستمتع بخدماتنا',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Cairo',
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const FacebookIconButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
