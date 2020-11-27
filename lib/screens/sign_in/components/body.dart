import 'package:e_commerce_ui/constants.dart';
import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidht(20),
        ),
        child: Column(
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidht(28),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Sign in with your Email and Password\nor continue with social media",
              textAlign: TextAlign.center,
            ),
            SignForm(),
          ],
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: "Email",
            hintText: "Enter your email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            ),
          ),
        )
      ],
    );
  }
}
