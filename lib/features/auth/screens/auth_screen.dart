
import 'package:eco_feast_2/common/widgets/custom_button.dart';
import 'package:eco_feast_2/common/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../services/auth_service.dart';
//import 'package:eco_feast_2/features/auth/services/auth_service.dart';

class AuthScreen extends StatefulWidget {
  static const String routName = '/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService authService = AuthService();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void signInUser()
  {
    authService.signInUser(
      context: context,
      email: _emailController.text, 
      password: _passwordController.text,
    );
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
                image: AssetImage('assets/background_image_2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Form(
                key: _signInFormKey,
                child: Stack(
                  children: [
                    // Email Field
                    Positioned(
                      top: 417,
                      left: 50,
                      right: 50,
                      child: CustomTextField(
                        controller: _emailController,
                        hintText: 'Email',
                        
                      ),
                      
                    ),
                    // Password Field
                    Positioned(
                      top: 495,
                      left: 50,
                      right: 50,
                      child: CustomTextField(
                        controller: _passwordController,
                        hintText: 'Password',
                        
                      ),
                    ),
                    // Add more fields using Positioned widgets as needed
                    Positioned(
                      top: 590,
                      left: 50,
                      right: 50,
                      child: CustomButton(
                        text: 'Sign in',
                        onTap: () {
                        if (_signInFormKey.currentState!.validate()) {
                          signInUser();
                        }
                      },
                        color: const Color.fromARGB(255, 164, 68, 68), // Custom color
                      ),
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

