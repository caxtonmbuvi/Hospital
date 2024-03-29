

import 'package:flutter/cupertino.dart';

import '../../exports.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey.withOpacity(0.3),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.text('L O G O', fontSize: 20,),
                  const Spacer(),
                  AppText.text('Jane Doe', fontSize: 18,),
                  AppText.text('+1 987 654 231', color: Colors.grey,)
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(Icons.home, color: const Color.fromARGB(255, 44, 96, 46),),
                title: AppText.text('Home', fontSize: 18, fontWeight: FontWeight.bold,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(LineIcons.pills, color: const Color.fromARGB(255, 44, 96, 46),),
                title: AppText.text('My Orders', fontSize: 18, fontWeight: FontWeight.bold,),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, Routes.my_prescriptions_history);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: Icon(LineIcons.prescription, color: const Color.fromARGB(255, 44, 96, 46),),
                  title: AppText.text('My Prescription History', fontSize: 18, fontWeight: FontWeight.bold,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(Icons.home, color: const Color.fromARGB(255, 44, 96, 46),),
                title: AppText.text('Saved Addresses', fontSize: 18, fontWeight: FontWeight.bold,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(Icons.home, color: const Color.fromARGB(255, 44, 96, 46),),
                title: AppText.text('Wallet', fontSize: 18, fontWeight: FontWeight.bold,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(Icons.home, color: const Color.fromARGB(255, 44, 96, 46),),
                title: AppText.text('Terms & Conditions', fontSize: 18, fontWeight: FontWeight.bold,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}