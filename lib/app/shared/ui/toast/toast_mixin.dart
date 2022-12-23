import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin ToastMixin on GetxController {
  void messageListener(Rxn<ToastModel> message) {
    ever<ToastModel?>(message, (model) {
      if (model != null) {
        Get.snackbar(
          model.title,
          model.message,
          backgroundColor: model.type.color(),
        );
      }
    });
  }
}

class ToastModel {
  final String title;
  final String message;
  final ToastType type;

  ToastModel({
    required this.title,
    required this.message,
    required this.type,
  });

  ToastModel.error({
    required this.title,
    required this.message,
  }) : type = ToastType.error;

  ToastModel.info({
    required this.title,
    required this.message,
  }) : type = ToastType.info;
}

enum ToastType { error, info }

extension ToastTypeExtension on ToastType {
  Color color() {
    switch(this) {
      case ToastType.error:
        return Colors.red[600] ?? Colors.red;
      case ToastType.info:
        return Colors.blue[200] ?? Colors.blue;
    }
  }
}
