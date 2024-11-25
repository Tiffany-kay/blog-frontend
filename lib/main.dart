import 'package:flutter/material.dart';
import 'pages/blog_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog App',
      theme: ThemeData(
        primaryColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.amber[700], // a shade of wheat
          primary: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.amber[700],
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white70), // replaces bodyText1
          bodyMedium: TextStyle(color: Colors.white70), // replaces bodyText2
          titleLarge: TextStyle( // replaces headline6
            color: Colors.amber[700],
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        cardColor: Colors.grey[900],
      ),
      home: BlogListPage(),
    );
  }
}
