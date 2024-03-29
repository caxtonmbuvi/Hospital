import 'package:flutter/material.dart';
import 'package:hospital/exports.dart';

import '../../gen/assets.gen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 20.0),

            Positioned(
              top: 10,
              left: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.login);
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ),

            SizedBox(height: 15.0),

            Center(
              child: Image.asset(
                Assets.images.stethoscope.path,
                height: 120, // Adjust height as needed
              ),
            ),
            SizedBox(height: 15.0),

            Center(
              child: AppText.text(
                "Utibu Health",
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),

            SizedBox(height: 30.0),

            CustomTextField (
              controller: passwordController,
              fieldId: "",
              hintText: "Enter Password",
              isPassword: true,
              prefixIcon: Icon(Icons.lock),
            ),

            SizedBox(height: 30,),

            SizedBox(
              height: 50,

              child: CustomButton(
                onTap: (){
                  Navigator.pushNamed(context, Routes.login);
                },
                text: "Reset Password",
                textColor: Colors.white,
                radius: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
