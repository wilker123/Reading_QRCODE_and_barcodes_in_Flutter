import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class QRCodePage extends StatefulWidget {
  const QRCodePage({ Key? key }) : super(key: key);

  @override
  _QRCodePageState createState() => _QRCodePageState();
}

class _QRCodePageState extends State<QRCodePage> {

  String ticket = "";

  readQRCode() async{
    String code = await FlutterBarcodeScanner.scanBarcode(
      "#ffffff",
      "Cancelar",
      false, 
      ScanMode.QR
    );
    setState(() {
      ticket = code != '-1' ? code : "Não validado";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if(ticket != "")
              Padding(
                padding: EdgeInsets.only(bottom: 24.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text("Ticket: $ticket", style: TextStyle(fontSize: 15),),
                ),
              ),
            ElevatedButton.icon(
              onPressed: readQRCode,
              icon: Icon(Icons.qr_code),
              label: Text("Validar"),
            ),
          ],
        ),
      ),
    );
  }
}