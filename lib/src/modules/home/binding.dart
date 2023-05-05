import 'package:get/get.dart';
import 'package:task_app/src/data/providers/task/provider.dart';
import 'package:task_app/src/data/services/storage/respository.dart';
import 'package:task_app/src/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
