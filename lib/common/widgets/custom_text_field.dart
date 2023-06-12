
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final int maxLines;
  final String emptyresponse;
  
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.maxLines = 1,
    this.obscureText = false,
    this.emptyresponse= '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontSize: 17.0, height: 1.2, color: Colors.black),
      controller: controller,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
        hintText: hintText,
        border: InputBorder.none,
        isDense: true,
        /*border: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(50.0),
          borderSide: const BorderSide(
            color: Color.fromARGB(0, 254, 254, 254),
          ),
        ),*/
        /*enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: const BorderSide(
            color: Color.fromARGB(0, 255, 255, 255),
          ),
        ),*/
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          if(emptyresponse!=''){
            return 'Enter your $emptyresponse';
          }
          else{
            return 'Enter your $hintText';
          }
        }
        return null;
      },
      maxLines: maxLines,
      obscureText: obscureText,
    );
  }
}
