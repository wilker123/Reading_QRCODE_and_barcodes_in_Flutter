import 'package:flutter/material.dart';
import 'package:reading_qrcode_and_barcode/pages/qrcode_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "QRCode demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey[900],
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.tealAccent,
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 36),
            onPrimary: Colors.black,
            textStyle: const TextStyle(fontSize:20, fontWeight: FontWeight.w600),
          )
        )
      ),
      themeMode: ThemeMode.dark,
      home: const QRCodePage(),
    );    
  }
}