import 'package:diet_pdf_creator/app/modules/home/home_controller.dart';
import 'package:diet_pdf_creator/app/routes/routes_application.dart';
import 'package:diet_pdf_creator/app/shared/ui/diet_ui_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.maxWidth,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Olá ${controller.user.displayName}!!',
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage:
                              NetworkImage(controller.user.photoURL.toString()),
                          radius: 17,
                        ),
                      ],
                    ),
                    Image.asset('assets/images/bell_peppers.png'),
                    GestureDetector(
                      child: Container(
                        height: 40,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: DietUiColors.i.lightGreen,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Montar dieta',
                                style: TextStyle(
                                  color: DietUiColors.i.primary,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.green[300],
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: DietUiColors.i.primary,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      onTap: () => Get.toNamed(RoutesApplication.personalData),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
