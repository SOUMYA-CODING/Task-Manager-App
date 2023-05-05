import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/src/data/services/storage/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_app/src/modules/home/binding.dart';
import 'package:task_app/src/modules/home/view.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageServices().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Task App',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
    );
  }
}
