import 'package:diet_pdf_creator/app/modules/diet_generator/end_document/end_document_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EndDocumentPage extends GetView<EndDocumentController> {
  const EndDocumentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EndDocumentPage')),
      body: const Center(
        child: Text('olá'),
      ),
    );
  }
}
