import 'package:diswipe/styles/style.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late TextEditingController fullNameTextController;
  late FocusNode fullNameFocusNode;
  late TextEditingController emailAddressTextController;
  late FocusNode emailAddressFocusNode;
  late TextEditingController usernameTextController;
  late FocusNode usernameFocusNode;
  late TextEditingController passwordTextController;
  late FocusNode passwordFocusNode;
  late TextEditingController passwordConfirmTextController;
  late FocusNode passwordConfirmFocusNode;
  bool passwordVisibility = false;
  bool passwordConfirmVisibility = false;

  @override
  void initState() {
    super.initState();

    fullNameTextController = TextEditingController();
    fullNameFocusNode = FocusNode();

    emailAddressTextController = TextEditingController();
    emailAddressFocusNode = FocusNode();

    usernameTextController = TextEditingController();
    usernameFocusNode = FocusNode();

    passwordTextController = TextEditingController();
    passwordFocusNode = FocusNode();

    passwordConfirmTextController = TextEditingController();
    passwordConfirmFocusNode = FocusNode();
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
              controller: fullNameTextController,
              focusNode: fullNameFocusNode,
              autofocus: true,
              autofillHints: const [AutofillHints.name],
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Enter your full name',
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
                fontFamily: 'Albert Sans',
                letterSpacing: 0.0,
                fontSize: 16,  
                color: AppColors.black,  
              ),
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your full name';
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
              controller: emailAddressTextController,
              focusNode: emailAddressFocusNode,
              autofocus: true,
              autofillHints: const [AutofillHints.email],
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Enter your email',
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
                fontFamily: 'Albert Sans',
                letterSpacing: 0.0,
                fontSize: 16,  
                color: AppColors.black,  
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
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
              controller: usernameTextController,
              focusNode: usernameFocusNode,
              autofocus: true,
              autofillHints: const [AutofillHints.username],
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Create a username',
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
                labelText: 'Make a password',
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
          child: SizedBox(
            width: 370,
            child: TextFormField(
              controller: passwordConfirmTextController,
              focusNode: passwordConfirmFocusNode,
              autofocus: true,
              autofillHints: const [AutofillHints.password],
              obscureText: !passwordConfirmVisibility,
              decoration: InputDecoration(
                labelText: 'Confirm password',
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
                      passwordConfirmVisibility = !passwordConfirmVisibility;
                    });
                  },
                  focusNode: FocusNode(skipTraversal: true),
                  child: Icon(
                    passwordConfirmVisibility
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
              if (passwordTextController.text != passwordConfirmTextController.text) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Passwords don\'t match!'),
                  ),
                );
                return;
              }

              // final user = await createAccountWithEmail(
              //   emailAddressTextController.text,
              //   passwordTextController.text,
              // );
              // if (user == null) {
              //   return;
              // }

              Navigator.of(context).pushReplacementNamed('/signin');
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
              'Sign Up',
              style: TextStyle(
                    fontWeight: FontWeight.w600,
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