import 'package:diswipe/styles/style.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  late TextEditingController usernameTextController;
  late FocusNode usernameFocusNode;
  late TextEditingController passwordTextController;
  late FocusNode passwordFocusNode;
  bool passwordVisibility = false;

  @override
  void initState() {
    super.initState();

    usernameTextController = TextEditingController();
    usernameFocusNode = FocusNode();

    passwordTextController = TextEditingController();
    passwordFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
          child: SizedBox(
            width: 370,
            child: TextFormField(
              controller: usernameTextController,
              focusNode: usernameFocusNode,
              autofocus: true,
              autofillHints: const [AutofillHints.username],
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Enter your username',
                labelStyle: const TextStyle(
                  letterSpacing: 0.0,
                  fontSize: 14,  
                  color: AppColors.gray, 
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.lightGray,  
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.mainOrange,  
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.red,  
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.red,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: AppColors.white,  
              ),
              style: const TextStyle(
                letterSpacing: 0.0,
                fontSize: 16,  
                color: AppColors.black,  
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please create a username';
                }
                return null;
              },
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
          child: SizedBox(
            width: 370,
            child: TextFormField(
              controller: passwordTextController,
              focusNode: passwordFocusNode,
              autofocus: true,
              autofillHints: const [AutofillHints.password],
              obscureText: !passwordVisibility,
              decoration: InputDecoration(
                labelText: 'Enter your password',
                labelStyle: const TextStyle(
                  letterSpacing: 0.0,
                  fontSize: 14,  
                  color: AppColors.gray, 
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.lightGray,  
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.mainOrange,  
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.red,  
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.red,  
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: AppColors.white,  
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      passwordVisibility = !passwordVisibility;
                    });
                  },
                  focusNode: FocusNode(skipTraversal: true),
                  child: Icon(
                    passwordVisibility
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: AppColors.gray,  
                    size: 24,
                  ),
                ),
              ),
              style: const TextStyle(
                letterSpacing: 0.0,
                fontSize: 16,  
                color: AppColors.black,  
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a password';
                }
                return null;
              },
            ),
          ),
        ),
        
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
          child: ElevatedButton(
            onPressed: () async {
              // final user = await createAccountWithEmail(
              //   emailAddressTextController.text,
              //   passwordTextController.text,
              // );
              // if (user == null) {
              //   return;
              // }

              Navigator.of(context).pushReplacementNamed('/home');
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(370, 44),
              backgroundColor: AppColors.mainOrange,
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1000),
              ),
            ),
            child: const Text(
              'Sign In',
              style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColors.white,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
      ]
    );                 
  }
}
