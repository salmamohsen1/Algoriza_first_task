import 'package:algoriza_first_task/src/auth/login_page.dart';
import 'package:algoriza_first_task/src/auth/sign_up_page.dart';
import 'package:algoriza_first_task/src/landing/boarding_page_view.dart';
import 'package:algoriza_first_task/widgets/buttons/fullfil_button.dart';
import 'package:algoriza_first_task/widgets/buttons/simple_text_button.dart';
import 'package:algoriza_first_task/widgets/common/app_slogan.dart';
import 'package:algoriza_first_task/widgets/scaffolds/flat_scaffold.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatScaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SimpleTextButton(
              text: 'Skip',
              width: 65.0,
              backgroundColor: Color(0xFFfaf2e8),
            ),
            const AppSlogan(),
            Expanded(child: BoardingPageView()),
            FullFillButton(
              color: const Color(0xFF51afab),
              text: 'Get Started',
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginPage())),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account ?",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignupPage())),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Color(0xFF51afab), fontSize: 15),
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
