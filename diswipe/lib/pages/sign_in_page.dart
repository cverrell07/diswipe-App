import 'package:diswipe/styles/style.dart';
import 'package:diswipe/widgets/sign_in_form_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: AppColors.white,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  width: 100,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                  ),
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.large),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 100.0),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Welcome\n',
                                  style: TextStyle(
                                    color: AppColors.mainOrange,
                                    fontSize: AppFontSize.xLarge * 2,
                                    fontWeight: AppFontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'back!',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: AppFontSize.xLarge * 2,
                                    fontWeight: AppFontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSpacing.small),
                          const Text(
                            'Enter your details to access your account. We will get you back on track!',
                            style: TextStyle(
                              color: AppColors.gray,
                              fontSize: AppFontSize.medium,
                              fontWeight: AppFontWeight.regular,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.large),
                          const SignInForm(),
                          const SizedBox(height: AppSpacing.medium),
                          Align(
                            alignment: Alignment.center,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                Navigator.of(context).pushNamed('/signup');
                              },
                              child: RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Don\'t have any account? ',
                                      style: TextStyle(
                                        color: AppColors.gray,
                                        fontSize: AppFontSize.large,
                                        fontWeight: AppFontWeight.light,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Make me a new one',
                                      style: TextStyle(
                                        color: AppColors.mainOrange,
                                        fontSize: AppFontSize.large,
                                        fontWeight: AppFontWeight.medium,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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