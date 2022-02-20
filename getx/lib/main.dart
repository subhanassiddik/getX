import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/person_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'get X',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var personController = Get.put(PersonController());

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        personController.changeToUpperCase();
      }),
      appBar: AppBar(
        title: const Text('getX'),
      ),
      body: Center(
        child: Obx(() => Text('Hello ' + personController.person.value.name)),
      ),
    );
  }
}
