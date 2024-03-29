import 'package:flutter/material.dart';
import 'package:hospital/exports.dart';
import '../../gen/assets.gen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Image.asset(
               Assets.images.stethoscope.path,
                height: 120, // Adjust height as needed
              ),

              SizedBox(height: 5.0),

              Center(
                child: AppText.text(
                    "Utibu Health",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
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
                controller: passwordController,
                fieldId: "",
                hintText: "Password",
                isPassword: true,
                prefixIcon: Icon(Icons.lock),
              ),

              SizedBox(height: 15.0),

              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.forgot_password);
                },
                child: AppText.text(
                  'Forgot Password?',
                  textAlign: TextAlign.right,
                    color: Colors.blue[700]
                ),
              ),

              SizedBox(height: 20.0),

              SizedBox(
                height: 50,

                child: CustomButton(
                  onTap: (){
                    Navigator.pushNamed(context, Routes.landing);
                  },
                  text: "Login",
                  textColor: Colors.white,
                  radius: 30,
                ),
              ),

              SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText.text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.register);
                    },
                    child: AppText.text(
                      'Register',
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
