import 'package:diet_pdf_creator/app/modules/diet_generator/3_brunch/brunch_controller.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_button.dart';
import 'package:diet_pdf_creator/app/shared/ui/widgets/diet_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrunchPage extends GetView<BrunchController> {
  final _formKey = GlobalKey<FormState>();

  BrunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('brunch page')),
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SingleChildScrollView(
                      child: Obx(
                        () => Row(
                          children: controller.listOptionalBrunch
                              .map(
                                (element) => Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 10,
                                      ),
                                      child: Text(element.option.toString()),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 10,
                                      ),
                                      child: Text(element.amount.toString()),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5,
                                        vertical: 10,
                                      ),
                                      child: Text(element.grammage.toString()),
                                    ),
                                  ],
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      DietFormField(
                        placeholder: 'opção',
                        controller: controller.optionEC,
                      ),
                      DietFormField(
                        placeholder: 'quantidade',
                        controller: controller.amountEC,
                      ),
                      DietFormField(
                        placeholder: 'peso',
                        controller: controller.grammageEC,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: Get.width * 0.3,
                            child: DietButton(
                              text: 'ou',
                              action: () {},
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.3,
                            child: DietButton(
                              text: '+',
                              action: () => controller.optionalBrunch(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: Get.width,
                        child: DietButton(
                          text: 'ir para colação',
                          action: () => controller.goToNextPage(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}