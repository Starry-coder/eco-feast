
import 'package:eco_feast_2/common/widgets/custom_button.dart';
import 'package:eco_feast_2/common/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/custom_button_2.dart';
import '../services/auth_service.dart';
//import 'package:eco_feast_2/features/auth/services/auth_service.dart';

class AuthScreen2 extends StatefulWidget {
  static const String routName = '/auth-screen-2';
  const AuthScreen2({Key? key}) : super(key: key);

  @override
  State<AuthScreen2> createState() => _AuthScreenState2();
}

class _AuthScreenState2 extends State<AuthScreen2> {
  //final AuthService authService = AuthService();
  final _signUpFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _cnfpasswordController = TextEditingController();
  final AuthService authService = AuthService(); 

  void signUpUser(){
    authService.signUpUser(
      context: context,
      name: _nameController.text, 
      email: _emailController.text, 
      password: _passwordController.text,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _cnfpasswordController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sign_up_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Form(
                key: _signUpFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 170),
                    CustomTextField(
                      controller: _nameController,
                      hintText: 'Name',
                    ),
                    const SizedBox(height: 27),
                    CustomTextField(
                      controller: _emailController,
                      hintText: 'Email',
                    ),
                    const SizedBox(height: 27),
                    CustomTextField(
                      controller: _passwordController,
                      hintText: 'Password',
                    ),
                    const SizedBox(height: 32),
                    CustomTextField(
                      controller: _cnfpasswordController,
                      hintText: 'Confirm Password',
                      emptyresponse: 'Password again',
                    ),
                    const SizedBox(height: 22),
                    SizedBox(height: 50,width: 200,
                    child:
                    CustomButton(
                      
                      text: 'Sign up',
                      onTap: () {
                        if (_signUpFormKey.currentState!.validate()) {
                          signUpUser();
                        }
                      },
                      color: const Color.fromARGB(255, 164, 68, 68),
                    ),),
                    const SizedBox(height: 1),
                    CustomButton2(
                      text: 'Already a user? Sign in',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),

          ),
        ),
      );
    
  }
}

