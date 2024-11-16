import 'package:diswipe/styles/style.dart';
import 'package:diswipe/widgets/sign_up_form_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                          const SizedBox(height: 50.0),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Hello\n',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: AppFontSize.xLarge * 2,
                                    fontWeight: AppFontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: 'there!',
                                  style: TextStyle(
                                    color: AppColors.mainOrange,
                                    fontSize: AppFontSize.xLarge * 2,
                                    fontWeight: AppFontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSpacing.small),
                          const Text(
                            'Start swiping by making your account first for better personalization.',
                            style: TextStyle(
                              color: AppColors.gray,
                              fontSize: AppFontSize.medium,
                              fontWeight: AppFontWeight.regular,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.large),
                          const SignUpForm(),
                          const SizedBox(height: AppSpacing.medium),
                          Align(
                            alignment: Alignment.center,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                Navigator.of(context).pushNamed('/signin');
                              },
                              child: RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Already have an account? ',
                                      style: TextStyle(
                                        color: AppColors.gray,
                                        fontSize: AppFontSize.large,
                                        fontWeight: AppFontWeight.light,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Sign me in',
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