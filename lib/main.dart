import 'package:flutter/services.dart';

import 'exports.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ThemeCubit(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeType>(
      builder: (context, theme) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: theme == ThemeType.light ? lightTheme : darkTheme,
          // initialRoute: Routes.login,
          home: const AnnotatedRegion(
            value: SystemUiOverlayStyle(
              statusBarColor: Colors.blueGrey,
              statusBarIconBrightness: Brightness.dark,
            ),
            child: LoginScreen(),
          ),
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
