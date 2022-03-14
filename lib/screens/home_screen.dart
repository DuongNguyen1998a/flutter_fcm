import 'package:flutter/material.dart';
import 'package:flutter_fcm_app/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    HomeController homeController = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter firebase cloud messaging',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            homeController.sendFcmNotification();
          },
          child: const Text('Send notification'),
        ),
      ),
    );
  }
}
