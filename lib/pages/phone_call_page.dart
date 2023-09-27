import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';

class PhoneCallPage extends StatelessWidget {
  const PhoneCallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Direct Phone Call'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ConstrainedBox(
              constraints:
                  BoxConstraints.tightFor(width: Get.width * 0.50, height: 40),
              child: ElevatedButton(
                onPressed: () {
                  FlutterPhoneDirectCaller.callNumber('678765');
                },
                child: const Text(
                  'Call Me Now',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
