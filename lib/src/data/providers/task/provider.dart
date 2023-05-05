import 'dart:convert';

import 'package:get/get.dart';
import 'package:task_app/src/core/utils/keys.dart';
import 'package:task_app/src/data/modules/task.dart';
import 'package:task_app/src/data/services/storage/services.dart';

class TaskProvider {
  final StorageServices _storage = Get.find<StorageServices>();

  List<Task> readTask() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}
