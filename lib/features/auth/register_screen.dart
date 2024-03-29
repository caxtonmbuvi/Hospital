import 'package:flutter/material.dart';
import 'package:hospital/exports.dart';

import '../../gen/assets.gen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              SizedBox(height: 30.0),

              Center(
                child: AppText.text(
                    "Registration Form",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),

              SizedBox(height: 30.0),

              CustomTextField (
                controller: usernameController,
                fieldId: "",
                hintText: "Username",
                prefixIcon: Icon(Icons.person),
              ),

              SizedBox(height: 30,),

              CustomTextField (
                controller: emailController,
                fieldId: "",
                hintText: "Email",
                prefixIcon: Icon(Icons.person),
              ),

              SizedBox(height: 30,),

              CustomTextField (
                controller: idController,
                fieldId: "",
                hintText: "ID Number",
                prefixIcon: Icon(Icons.person),
              ),

              SizedBox(height: 30,),

              CustomTextField (
                controller: phoneController,
                fieldId: "",
                hintText: "Phone",
                prefixIcon: Icon(Icons.person),
              ),

              SizedBox(height: 30,),

              CustomTextField (
                controller: passwordController,
                fieldId: "",
                hintText: "Password",
                isPassword: true,
                prefixIcon: Icon(Icons.lock),
              ),

              SizedBox(height: 30,),

              CustomTextField (
                controller: confirmPasswordController,
                fieldId: "",
                hintText: "Confirm Password",
                isPassword: true,
                prefixIcon: Icon(Icons.lock),
              ),

              SizedBox(height: 20.0),

              SizedBox(
                height: 50,

                child: CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.login);
                  },
                  text: "Register",
                  textColor: Colors.white,
                  radius: 30,
                ),
              ),

              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText.text("Already have an account.? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.login);
                    },
                    child: AppText.text(
                        'Login',
                        color: Colors.blue[700]
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
