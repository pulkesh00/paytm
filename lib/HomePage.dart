import 'dart:io';
import 'dart:async';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'DrawerItems.dart';
import 'FrontPage.dart';
import 'MessagePage.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage > {

  String result = "Hello World...!";

  bool shouldPop = true;
  Future _scanQR() async
  {
   var cameraStatus = await Permission.camera.status;
    if(cameraStatus.isGranted) {
      String? cameraScanResult = await scanner.scan();
      setState(() {
        result =
        cameraScanResult!; // setting string result with cameraScanResult
      });
    }
    else {
      var isGrant = await Permission.camera.request();
      if (isGrant.isGranted) {
        String? cameraScanResult = await scanner.scan();
        setState(() {
          result =
          cameraScanResult!; // setting string result with cameraScanResult
        });
      }
    }
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            _scanQR(); // calling a function when user click on button


          },
          backgroundColor: const Color(0xff01064a),

          label: const Text('Scan QR Code',
            style: TextStyle(color: Colors.white, fontSize: 15),),
          icon: const Icon(Icons.qr_code, color: Colors.white,),
        ),
        backgroundColor: const Color(0xff01064a),
        drawer: Drawer(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.9,
          child: const DrawerItems(),
        ),
        body: PageView(
          pageSnapping: true,
          children: const [
            FrontPage(),
            MessagePage(),
          ],),
      );
    }
}
