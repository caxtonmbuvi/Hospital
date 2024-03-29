

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
            ListTile(
              leading: Icon(Icons.home, color: const Color.fromARGB(255, 44, 96, 46),),
              title: AppText.text('Page 1', fontSize: 18, fontWeight: FontWeight.bold,),
            ),
            ListTile(
              leading: Icon(Icons.medication_outlined),
              title: AppText.text('Page 1', fontSize: 20,),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: AppText.text('Page 1', fontSize: 20,),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: AppText.text('Page 1', fontSize: 20,),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: AppText.text('Page 1', fontSize: 20,),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: AppText.text('Page 1', fontSize: 20,),
            ),
          ],
        ),
      ),
    );
  }
}