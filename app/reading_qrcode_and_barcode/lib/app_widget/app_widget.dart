import 'package:flutter/material.dart';
import 'package:reading_qrcode_and_barcode/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );    
  }
}