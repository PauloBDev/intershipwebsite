import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// import 'package:pdfx/pdfx.dart';

class PDFPage extends StatefulWidget {
  const PDFPage({
    super.key,
  });

  @override
  State<PDFPage> createState() => _PDFPageState();
}

class _PDFPageState extends State<PDFPage> {
  // final pdfController = PdfController(
  //   document: PdfDocument.openAsset(
  //       'assets/Relatório Final de Estágio Paulo Bernardino 3807.pdf'),
  // );
  @override
  Widget build(BuildContext context) {
    // return PdfView(
    //   controller: pdfController,
    // );
    return SafeArea(
      child: Scaffold(
        body: SfPdfViewer.asset(
          'assets/Relatório Final de Estágio Paulo Bernardino 3807.pdf',
          initialZoomLevel: 0.1,
        ),
      ),
    );
  }
}
