import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQRCode extends StatefulWidget {
  const GenerateQRCode({super.key});

  @override
  State<GenerateQRCode> createState() => _GenerateQRCodeState();
}

class _GenerateQRCodeState extends State<GenerateQRCode> {
  TextEditingController urlCntrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, // Set the color of the back arrow to white
        ),
        backgroundColor: const Color.fromARGB(255, 71, 236, 195),
        title: Text("Generate Codigo QR", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (urlCntrl.text.isNotEmpty)
                QrImageView(data: urlCntrl.text, size: 200),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextField(
                  controller: urlCntrl,
                  decoration: InputDecoration(
                      labelText: "Introduce tus datos",
                      hintText: "Introduce tus datos",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 72, 218, 186))),
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    "Generate Qr code",
                    style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
