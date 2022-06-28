import 'package:algoriza_first_task/core/theme/app_theme.dart';
import 'package:algoriza_first_task/src/auth/sign_up_page.dart';
import 'package:algoriza_first_task/widgets/buttons/fullfil_button.dart';
import 'package:algoriza_first_task/widgets/scaffolds/flat_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatScaffold(
      body: ListView(
        children: [
          const Image(
            image: AssetImage("assets/images/header.jpg"),
            height: 200,
            width: double.infinity,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.white,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome to Fashion Daily', style: AppTheme.header),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Sign in',
                        style: TextStyle(
                          fontSize: 30,
                        )),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Text('Help',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue,
                              )),
                          SizedBox(width: 5),
                          Icon(
                            Icons.help,
                            color: Colors.blue,
                            size: 16,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 65.0,
                        child: IntlPhoneField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Eg.011101111011", //hint text
                            hintStyle: TextStyle(
                                fontSize: 10,
                                color: Colors.grey), //hint text style
                          ),
                          initialCountryCode: 'EG',
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                        child: TextField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Eg.897464", //hint text
                          hintStyle: TextStyle(
                              fontSize: 10,
                              color: Colors.grey), //hint text style
                        )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FullFillButton(
                        color: const Color(0xFF3586ff),
                        height: 40,
                        borderRadius: 5,
                        text: 'Sign in',
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const LoginPage())),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(children: <Widget>[
                        Expanded(child: Divider()),
                        Text(
                          "Or",
                          style: AppTheme.header,
                        ),
                        Expanded(child: Divider()),
                      ]),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: null,
                          style: ButtonStyle(
                            side: MaterialStateBorderSide.resolveWith(
                                (Set<MaterialState> states) {
                              return const BorderSide(color: Colors.blue);
                            }),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0))),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.add),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Sign with by google',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Doesn't have any account ?",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(width: 5),
                              GestureDetector(
                                onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignupPage())),
                                child: const Text(
                                  'Register here',
                                  style: TextStyle(
                                      color: const Color(0xFF3586ff),
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30.0, left: 10),
                        child: Text(
                          'use the application according to policy rules.Any kinds of violations will be subject to sunctions',
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                )
                // Text('Text Field Label', style: AppTheme.header),
              ],
            ),
          )
        ],
      ),
    );
  }
}
