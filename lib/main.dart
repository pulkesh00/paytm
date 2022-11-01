import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'HomePage.dart';

void main() {
  runApp(const Paytm());
}

class Paytm extends StatelessWidget {
  const Paytm({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch:Colors.lightBlue ),
         ),
      home: const Scaffold(
        body: HomePage(),
      ),
    );
  }
}










