import 'package:flutter/material.dart';
import 'package:woman_safty_app/components/button/custom_button.dart';
import 'package:woman_safty_app/components/textField/phone_textfield.dart';
import 'package:woman_safty_app/constants/asset_path.dart';
import 'package:woman_safty_app/styles/b_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phone = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColor.appBackground,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetPath.logo,
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Login to your account',
                    style: KTextStyle.headline3.copyWith(
                      color: KColor.textColor,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                KPhone(
                  controller: phone,
                  readOnly: false,
                  hintText: 'phone number',
                  label: '',
                ),
                const SizedBox(height: 20),
                KButton(
                  title: 'Submit',
                  onTap: () {
                    Navigator.pushNamed(context, '/otp');
                  },
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Create an account? ',
                          style: KTextStyle.subtitle4.copyWith(
                            color: KColor.icon.withOpacity(0.7),
                          ),
                        ),
                        TextSpan(
                          text: 'Register',
                          style: KTextStyle.subtitle2.copyWith(
                            color: KColor.icon,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
