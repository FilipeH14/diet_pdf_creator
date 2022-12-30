import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:share_extend/share_extend.dart';

class PdfScreen extends StatelessWidget {
  final String pathPdf;

  const PdfScreen({
    required this.pathPdf,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Document'),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () => ShareExtend.share(
              pathPdf,
              'file',
              sharePanelTitle: 'Enviar PDF',
            ),
          ),
        ],
      ),
      body: PDFView(
        filePath: pathPdf,
      ),
    );
  }
}
