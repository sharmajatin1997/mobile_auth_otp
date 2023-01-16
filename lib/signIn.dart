import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_auth/authcontroller.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);

  final controller = TextEditingController();
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mobile Authentication")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
              ),
            ),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Generate OTP'),
                onPressed: () {
                  authController.phoneAuth("+91${controller.text}");
                },
              )),
        ],
      ),
    );
  }
}
