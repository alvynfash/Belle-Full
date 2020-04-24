import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bellefull/screens/categories_screen.dart';

void main() {
  runApp(BelleFullApp());
}

class BelleFullApp extends StatefulWidget {
  BelleFullApp({Key key}) : super(key: key);

  @override
  _BelleFullAppState createState() => _BelleFullAppState();
}

class _BelleFullAppState extends State<BelleFullApp> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: 'Béllé-Full',
      theme: ThemeData(
        primaryColor: Color(0xff29384d),
        accentColor: Color(0xff919ba7),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryTextTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          headline6: GoogleFonts.latoTextTheme(textTheme).headline6.copyWith(
                color: Colors.white,
              ),
          // bodyText2: GoogleFonts.oswald(textStyle: textTheme.bodyText2),
        ),
      ),
      home: CategoriesScreen(),
    );
  }
}
