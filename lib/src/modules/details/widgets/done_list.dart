import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/src/core/utils/extension.dart';
import 'package:task_app/src/core/values/colors.dart';
import 'package:task_app/src/modules/home/controller.dart';

class DoneList extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  DoneList({super.key});

  @override
  Widget build(BuildContext context) => Obx(
        () => homeCtrl.doneTodos.isNotEmpty
            ? ListView(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 2.0.wp, horizontal: 5.0.wp),
                    child: Text(
                      'Completed(${homeCtrl.doneTodos.length})',
                      style: TextStyle(
                        fontSize: 14.0.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  ...homeCtrl.doneTodos
                      .map((element) => Dismissible(
                            key: ObjectKey(element),
                            direction: DismissDirection.endToStart,
                            onDismissed: (_) =>
                                homeCtrl.deleteDoneTodo(element),
                            background: Container(
                              color: Colors.red.withOpacity(0.8),
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 5.0.wp),
                                child: const Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 3.0.wp, horizontal: 9.0.wp),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Icon(
                                      Icons.done,
                                      color: blue,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 4.0.wp),
                                    child: Text(
                                      element['title'],
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ))
                      .toList()
                ],
              )
            : Container(),
      );
}
