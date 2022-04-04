import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Ninja',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Vidcall(),
    );
  }
}

class Vidcall extends StatefulWidget {
  const Vidcall({Key? key}) : super(key: key);

  @override
  State<Vidcall> createState() => _VidcallState();
}

class _VidcallState extends State<Vidcall> {
  static const platformEkyc = MethodChannel('net.lintasarta.solution/ekyc');
  String isVidcallError = 'Unknown';
  String statusVidcall = 'Unknown';

  Future<void> startVideoCall() async {
    String isVidcallError;
    try {
      isVidcallError =
          await platformEkyc.invokeMethod('startVideoCall', <String, dynamic>{
        "apiKey": "RUnwutNHuA790LaHrHoVs2hIaU4z088R",
        "destination": "id.artaku.mobile.MainActivity",
        "nik": "1231231231231233",
        "name": "John Doe",
        "dateOfBirth": "2000-02-02",
        "placeOfBirth": "Jakarta",
        "sex": 1,
        "address": "Jalan Diponegoro",
        "religion": "kristen",
        "maritalStatus": "duda/janda",
        "job": 5
      });
    } on PlatformException catch (e) {
      isVidcallError = "Failed to get status: '${e.message}'.";
    }
    setState(() {
      isVidcallError = isVidcallError;
    });
  }

  Future<void> getVideoCallStatus() async {
    String statusVidcall;
    try {
      statusVidcall = await platformEkyc.invokeMethod('getVideoCallStatus');
    } on PlatformException catch (e) {
      statusVidcall = "Failed to get status: '${e.message}'.";
    }
    setState(() {
      statusVidcall = statusVidcall;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('error: $isVidcallError'),
          ElevatedButton(
            onPressed: startVideoCall,
            child: const Text('call'),
          ),
          Text('status: $statusVidcall'),
          ElevatedButton(
            onPressed: getVideoCallStatus,
            child: const Text('status'),
          ),
        ],
      ),
    );
  }
}
