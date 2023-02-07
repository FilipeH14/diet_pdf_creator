import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BreakfastController extends GetxController {

  final formKey = GlobalKey<FormState>();

  var myListForm = <Widget>[].obs;
  var breakfastValues = <String, dynamic>{}.obs;

  var valor = '';

  void insertValues(newValue) {
    breakfastValues.addEntries(
      {'${breakfastValues.length}': newValue}.entries,
    );

    var valor = breakfastValues.value.toString();

    log('$breakfastValues');
  }

  void saveValues() {
    formKey.currentState?.save();
    var breakfastOption = breakfastValues;

    log('$breakfastOption');

    log('$valor');
  }

}
