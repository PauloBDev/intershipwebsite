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
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Center(
              child: SfPdfViewer.asset(
                'assets/Relatório_Final_de_Estágio_Paulo_Bernardino_3807.pdf',
                initialZoomLevel: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
